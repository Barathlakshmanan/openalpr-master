Make sure that dependencies and required tools are installed
sudo apt-get install libpng12-dev libjpeg62-dev libtiff4-dev zlib1g-dev
sudo apt-get install build-essential
sudo apt-get install autoconf automake libtool
sudo apt-get install git-core
sudo apt-get install cmake
sudo apt-get install liblog4cplus-dev
sudo apt-get install libcurl4-openssl-dev 
sudo apt-get install libgtk2.0-dev



Install Leptonica from source. The latest version as of writing is 1.71. Move the
downloaded tarballs to some directory. I will assume that they are located at
/usr/local/src/openalpr/.
wget http://www.leptonica.org/source/leptonica-1.71.tar.gz
tar -zxvf leptonica-1.71.tar.gz
cd leptonica-1.71
./configure
make
sudo make install
sudo ldconfig

Then install Tesseract OCR from source.
wget https://tesseract-ocr.googlecode.com/files/tesseract-ocr-3.02.02.tar.gz
tar -zxvf tesseract-ocr-3.02.02.tar.gz
cd tesseract-ocr
./autogen.sh
./configure
make (this may take a while)
sudo make install
sudo ldconfig
Finally, install the languages you want. Simply place the trained data under
/usr/local/share/tessdata. You can download trained data from Google code.


Instructions for installing opencv
Download OpenCV from the following link https://github.com/Itseez/opencv and unzip the folder
cd opencv-master
mkdir build
cd build
cmake ../
make
sudo make install
sudo ldconfig



Instructions for installing ALPR
Download OpenALPR from the following link https://github.com/Barathlakshmanan/openalpr-master and unzip the folder
cd src
mkdir build
cd build
cmake ../
make
sudo make install
sudo ldconfig

Export Path (reason for segmentation fault):
export TESSDATA_PREFIX=/usr/local/share/openalpr/runtime_data/ocr/


Note:
configuration file is in /etc/openalpr/
Runtime data is in: /usr/local/share/openalpr/runtime_data/
