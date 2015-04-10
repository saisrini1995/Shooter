
README

1)Install Allegro 5.0
	Visit http://sourceforge.net/projects/alleg/files/allegro/5.0.10/ to download the package

2)Build allegro
	$ sudo apt-get update
	$ sudo apt-get install -y cmake g++ freeglut3-dev libxcursor-dev 	libpng12-dev libjpeg-dev libfreetype6-dev libgtk2.0-dev 						libasound2-	dev libpulse-dev libopenal-dev libflac-dev libdumb1-dev libvorbis-dev libphysfs-dev
	//Now building allegro from the directory source code was extracted to
	$ cd allegro5
	$ mkdir build
	$ cd build
	$ cmake ..
	$ make
	$ sudo make install
	$ sudo ldconfig

3)Go to the Project folder, run make

4)Run the shooter excecutable

ABOUT THE GAME

Your objective is to kill as many enemies as possible. Collision with enemies or their bullets will harm your ship.
Enjoy!
