/*
 * Copyright (c) 2015 New Designs Unlimited, LLC
 * Opensource Automated License Plate Recognition [http://www.openalpr.com]
 *
 * This file is part of OpenAlpr.
 *
 * OpenAlpr is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License
 * version 3 as published by the Free Software Foundation
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
*/
#include <cstdio>
#include <sstream>
#include <iostream>
#include <iterator>
#include <algorithm>

#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/videoio/videoio_c.h"

#include "tclap/CmdLine.h"
#include "support/filesystem.h"
#include "support/timing.h"
#include "support/platform.h"
#include "video/videobuffer.h"
#include "alpr.h"

using namespace alpr;
using namespace cv;

const std::string MAIN_WINDOW_NAME = "ALPR main window";

const bool SAVE_LAST_VIDEO_STILL = false;
const std::string LAST_VIDEO_STILL_LOCATION = "/tmp/laststill.jpg";
double totalProcessingTime;
/** Function Headers */
bool detectandshow(Alpr* alpr, cv::Mat frame, std::string region, bool writeJson);

bool measureProcessingTime = false;
std::string templateRegion;
  AlprResults result1;
  std::stringstream res;
  
  cv::Mat op_res;
// This boolean is set to false when the user hits terminates (e.g., CTRL+C )
// so we can end infinite loops for things like video processing.
bool program_active = true;

int main( int argc, const char** argv )
{
  std::string filename;
  std::string configFile = "";
  bool outputJson = false;
  int seektoms = 0;
  bool detectRegion = false;
  std::string country;
  int topn;
  TCLAP::CmdLine cmd("OpenAlpr Command Line Utility", ' ', Alpr::getVersion());

  TCLAP::UnlabeledValueArg<std::string>  fileArg( "image_file", "Image containing license plates", false, "", "image_file_path"  );

  
  TCLAP::ValueArg<std::string> countryCodeArg("c","country","Country code to identify (either us for USA or eu for Europe).  Default=us",false, "us" ,"country_code");
  TCLAP::ValueArg<int> seekToMsArg("","seek","Seek to the specied millisecond in a video file. Default=0",false, 0 ,"integer_ms");
  TCLAP::ValueArg<std::string> configFileArg("","config","Path to the openalpr.conf file",false, "" ,"config_file");
  TCLAP::ValueArg<std::string> templateRegionArg("t","template_region","Attempt to match the plate number against a region template (e.g., md for Maryland, ca for California)",false, "" ,"region code");
  TCLAP::ValueArg<int> topNArg("n","topn","Max number of possible plate numbers to return.  Default=10",false, 10 ,"topN");

  TCLAP::SwitchArg jsonSwitch("j","json","Output recognition results in JSON format.  Default=off", cmd, false);
  TCLAP::SwitchArg detectRegionSwitch("d","detect_region","Attempt to detect the region of the plate image.  Default=off", cmd, false);
  TCLAP::SwitchArg clockSwitch("","clock","Measure/print the total time to process image and all plates.  Default=off", cmd, false);

  try
  {
    cmd.add( templateRegionArg );
    cmd.add( seekToMsArg );
    cmd.add( topNArg );
    cmd.add( configFileArg );
    cmd.add( fileArg );
    cmd.add( countryCodeArg );

    
    if (cmd.parse( argc, argv ) == false)
    {
      // Error occured while parsing.  Exit now.
      return 1;
    }

    filename = fileArg.getValue();

    country = countryCodeArg.getValue();
    seektoms = seekToMsArg.getValue();
    outputJson = jsonSwitch.getValue();
    configFile = configFileArg.getValue();
    detectRegion = detectRegionSwitch.getValue();
    templateRegion = templateRegionArg.getValue();
    topn = topNArg.getValue();
    measureProcessingTime = clockSwitch.getValue();
  }
  catch (TCLAP::ArgException &e)    // catch any exceptions
  {
    std::cerr << "error: " << e.error() << " for arg " << e.argId() << std::endl;
    return 1;
  }

  
  cv::Mat frame;

  Alpr alpr(country, configFile);
  alpr.setTopN(topn);

  if (detectRegion){
    alpr.setDetectRegion(detectRegion);

  if (templateRegion.empty() == false)
    alpr.setDefaultRegion(templateRegion);
  }
  if (alpr.isLoaded() == false)
  {
    std::cerr << "Error loading OpenALPR" << std::endl;
    return 1;
  }

  if (filename.empty())
  {
    std::string filename;
    while (std::getline(std::cin, filename))
    {
      if (fileExists(filename.c_str()))
      {
	frame = cv::imread( filename );
	detectandshow( &alpr, frame, "", outputJson);
      }
      else
      {
	std::cerr << "Image file not found: " << filename << std::endl;
      }

    }
  }
  else if (filename == "webcam")
  {
    int framenum = 0;
    cv::VideoCapture cap(0);
    if (!cap.isOpened())
    {
      std::cout << "Error opening webcam" << std::endl;
      return 1;
    }

    while (cap.read(frame))
    {
      detectandshow(&alpr, frame, "", outputJson);
      sleep_ms(10);
      framenum++;
    }
  }
  else if (startsWith(filename, "http://") || startsWith(filename, "https://"))
  {
    int framenum = 0;
    
    VideoBuffer videoBuffer;
    
    videoBuffer.connect(filename, 5);
    
    cv::Mat latestFrame;
    
    while (program_active)
    {
      std::vector<cv::Rect> regionsOfInterest;
      int response = videoBuffer.getLatestFrame(&latestFrame, regionsOfInterest);
      
      if (response != -1)
      {
        detectandshow( &alpr, latestFrame, "", outputJson);
      }
      
      // Sleep 10ms
      sleep_ms(10);
    }
    
    videoBuffer.disconnect();
    
    std::cout << "Video processing ended" << std::endl;
  }
  else if (hasEndingInsensitive(filename, ".avi") || hasEndingInsensitive(filename, ".mp4") || hasEndingInsensitive(filename, ".webm") || 
	   hasEndingInsensitive(filename, ".flv") || hasEndingInsensitive(filename, ".mjpg") || hasEndingInsensitive(filename, ".mjpeg"))
  {
    if (fileExists(filename.c_str()))
    {
      int framenum = 0;

      cv::VideoCapture cap=cv::VideoCapture();
      cap.open(filename);
      cap.set(CV_CAP_PROP_POS_MSEC, seektoms);

	  	cv::VideoWriter output;
		std::cout<<std::endl<<cap.get(cv::CAP_PROP_FOURCC)<<"   "<<cap.get(cv::CAP_PROP_FPS)<<"   "<<cap.get(cv::CAP_PROP_FRAME_WIDTH)<<"   "<<cap.get(cv::CAP_PROP_FRAME_HEIGHT);
	output.open ( "render_product3.avi", VideoWriter::fourcc('M','J','P','G'), cap.get(cv::CAP_PROP_FPS), cv::Size ( cap.get(cv::CAP_PROP_FRAME_WIDTH), cap.get(cv::CAP_PROP_FRAME_HEIGHT) ));
	if( !cap.isOpened() )
		return -1;
	int i=1;
	totalProcessingTime=0;
	while (cap.read(frame))
	{
		if(frame.empty())
			break;
	       // std::cout << "Frame: " << framenum << std::endl;

        detectandshow( &alpr, frame, "", outputJson);
        //create a 1ms delay
        sleep_ms(1);
        framenum++;
  //cv::rectangle(frame,cvPoint(0,frame.rows-50),cvPoint(frame.cols,frame.rows),cvScalar(0,0,0),cv::FILLED);
	//  cv::putText(frame, res.str(), cvPoint(30,frame.rows-30),cv::FONT_HERSHEY_COMPLEX_SMALL, 1.4, cvScalar(200,200,250), 1, CV_AA);
	//	res.str("");
	output.write(op_res);
	}
	cap.release();
	output.release();
	std::cout << "Total Time to process image: " << totalProcessingTime << "ms." << std::endl;

     //while (cap.read(frame))
     // {
     //   if (SAVE_LAST_VIDEO_STILL)
     //   {
     //     cv::imwrite(LAST_VIDEO_STILL_LOCATION, frame);
     //   }
     //   std::cout << "Frame: " << framenum << std::endl;

     //   detectandshow( &alpr, frame, "", outputJson);
     //   //create a 1ms delay
     //   sleep_ms(1);
     //   framenum++;
     // }
    }
    else
    {
      std::cerr << "Video file not found: " << filename << std::endl;
    }
  }
  else if (hasEndingInsensitive(filename, ".png") || hasEndingInsensitive(filename, ".jpg") || 
	   hasEndingInsensitive(filename, ".jpeg") || hasEndingInsensitive(filename, ".gif"))
  {
    if (fileExists(filename.c_str()))
    {
      frame = cv::imread( filename );

      bool plate_found = detectandshow( &alpr, frame, "", outputJson);
	  //cv::rectangle(frame,cvPoint(0,frame.rows-50),cvPoint(frame.cols,frame.rows),cvScalar(0,0,0),cv::FILLED);
	  //cv::putText(frame, res.str(), cvPoint(30,frame.rows-30),cv::FONT_HERSHEY_COMPLEX_SMALL, 1.4, cvScalar(200,200,250), 1, CV_AA);
	  cv::imwrite("resultt.jpg", op_res);
	  	  cv::imwrite("resulttt.jpg", frame);
      

      if (!plate_found && !outputJson)
	std::cout << "No license plates found." << std::endl;
    }
    else
    {
      std::cerr << "Image file not found: " << filename << std::endl;
    }
  }
  else if (DirectoryExists(filename.c_str()))
  {
    std::vector<std::string> files = getFilesInDir(filename.c_str());

    std::sort( files.begin(), files.end(), stringCompare );

    for (int i = 0; i< files.size(); i++)
    {
      if (hasEndingInsensitive(files[i], ".jpg") || hasEndingInsensitive(files[i], ".png"))
      {
        std::string fullpath = filename + "/" + files[i];
        std::cout << fullpath << std::endl;
        frame = cv::imread( fullpath.c_str() );
        if (detectandshow( &alpr, frame, "", outputJson))
        {
          //while ((char) cv::waitKey(50) != 'c') { }
        }
        else
        {
          //cv::waitKey(50);
        }
      }
    }
  }
  else
  {
    std::cerr << "Unknown file type" << std::endl;
	//std::cin.get();
    return 1;
  }
//  std::cin.get();
  return 0;
}




bool detectandshow( Alpr* alpr, cv::Mat frame, std::string region, bool writeJson)
{

  timespec startTime;
  getTime(&startTime);

  std::vector<AlprRegionOfInterest> regionsOfInterest;
  regionsOfInterest.push_back(AlprRegionOfInterest(0,0, frame.cols, frame.rows));
  AlprResults results;
 // for (int l=1;l<101;l++)
  results = alpr->recognize(frame.data, frame.elemSize(), frame.cols, frame.rows, regionsOfInterest );

  timespec endTime;
  getTime(&endTime);
totalProcessingTime =totalProcessingTime+ diffclock(startTime, endTime);
  if (measureProcessingTime)
    std::cout << "Total Time to process image: " << totalProcessingTime << "ms." << std::endl;
   //cv:displayImage(config, "Main Image", img);
   //cv::imwrite("rand_window.jpg",frame);
  
  if (writeJson)
  {
    std::cout << alpr->toJson( results ) << std::endl;
  }
  else
  {
	  	  op_res=frame;
		    cv::rectangle(op_res,cvPoint(0,frame.rows-(50*results.plates.size())),cvPoint(frame.cols,frame.rows),cvScalar(0,0,0),cv::FILLED);
	
    for (int i = 0; i < results.plates.size(); i++)
    {
      std::cout << "plate" << i << ": " << results.plates[i].topNPlates.size() << " results";
      if (measureProcessingTime)
        std::cout << " -- Processing Time = " << results.plates[i].processing_time_ms << "ms.";
      std::cout << std::endl;

      if (results.plates[i].regionConfidence > 0)
        std::cout << "State ID: " << results.plates[i].region << " (" << results.plates[i].regionConfidence << "% confidence)" << std::endl;
      
      for (int k = 0; k < results.plates[i].topNPlates.size(); k++)
      {
        std::cout << "    - " << results.plates[i].topNPlates[k].characters << "\t confidence: " << results.plates[i].topNPlates[k].overall_confidence;
        if (templateRegion.size() > 0)
          std::cout << "\t template_match: " << results.plates[i].topNPlates[k].matches_template;
        
        std::cout << std::endl;
      }
	  res.str("");

	  for (int z = 0; z < 4; z++)
        {
          AlprCoordinate* coords = results.plates[i].plate_points;
          cv::Point p1(coords[z].x, coords[z].y);
          cv::Point p2(coords[(z + 1) % 4].x, coords[(z + 1) % 4].y);
          cv::line(op_res, p1, p2, cv::Scalar(255,100,255), 3);
        }
     
	  int cou;
	  cou= ((3<results.plates[i].topNPlates.size())?3:results.plates[i].topNPlates.size());
	  for (int k = 0; k < cou; k++)
      {
		  
        res<< "- " << results.plates[i].topNPlates[k].characters << " confidence: " << results.plates[i].topNPlates[k].overall_confidence;
				
        //res<< std::endl;
      }
	    cv::putText(op_res, res.str(), cvPoint(30,frame.rows-(20*(i+1))),cv::FONT_HERSHEY_COMPLEX_SMALL, 1.4, cvScalar(200,200,250), 1, CV_AA);

    }
  }


  result1=results;
  return results.plates.size() > 0;
}

