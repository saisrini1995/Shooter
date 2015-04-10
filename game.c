/* K. Sai Srinivas
   cs13b039
   game library
*/

#include <allegro5/allegro.h>
#include <allegro5/allegro_image.h>
#include <allegro5/allegro_primitives.h>
#include "game.h"
#include <string.h>

//defining the declared extern variables
int FPS=30; //frames per second
int BPS=5; //number of bullets fired per second
int n_bullets=10; //maximum number of bullets on the screen
int en_BPS=2; //number of bullets fired by certain enemy planes per sec
int en_n_bullets=15; //maximum number of enemy bullets on the screen
int islands=5; //the maximum number of islands on the screen
bool keys[]={false, false, false, false};

//init spaceship creates a new payer
SpaceShip* init_ship(){
  SpaceShip *ship=NULL;
  ship=(SpaceShip*)malloc(sizeof(SpaceShip));
  //initial x coordinate
  ship->x=32;
  //initial y coordinate
  ship->y=640-32;
  //space ships speed
  ship->speed=9;
  //health is 100 initially
  ship->health= 100;
  //create live ship
  ship->live= true;
  return ship;
}

//returns a bullets array
Bullet* init_bullets(const int n_bullets){
  int i,j;
  Bullet *bullets=NULL;
  bullets=(Bullet*)malloc(n_bullets*sizeof(Bullet));
  for(i=0;i<n_bullets;i++){
    //initial x position
    (bullets+i)->x=0;
    //initial y position
    (bullets+i)->y=0;
    //bullets are faster than the spaceship
    (bullets+i)->speed=15;
    //initialize bullet direction
    (bullets+i)->dir=1;
    //bullets are initially all dead
    (bullets+i)->live=false;
    //setting collision condition
    for(j=0;j< MAX_ENEMIES; j++){
      ((bullets+i)->condition)[j]=false;
    }
  }
  return bullets;
}

//returns a bullet array
Bullet* init_en_bullets(int en_n_bullets){
	int i, j;
	Bullet* bullets=NULL;
	bullets =(Bullet*)malloc(en_n_bullets*sizeof(Bullet));
	for(i=0; i<en_n_bullets; i++){
		//initialise x position
		(bullets+i)->x=0;
		//initial y position
		(bullets+i)->y=0;
		//bullets are slower
		(bullets+i)->speed=4;
		//bullets are initially dead
		(bullets+i)->live=false;
		//give direction of Bullet
		(bullets+i)->dir=1;
		((bullets+i)->condition)[0]= false;
	}
	return bullets;
}
//drawind the ship
void draw_ship(SpaceShip *ship, ALLEGRO_BITMAP* vehicle){
  //al_draw_filled_rectangle(ship->x-10,ship->y-10, ship->x+10, ship->y+10, al_map_rgb(0, 255, 0));
  if(ship->live)
	  al_draw_bitmap(vehicle, ship->x-64, ship->y-64, 0);
}
 
//drawing bullet primitives
void draw_bullets(Bullet *bullets){
  int i;
  for(i=0;i<n_bullets;i++){
    if((bullets+i)->live){
      //bullets arerectangles
      al_draw_filled_rectangle((bullets+i)->x-2, (bullets+i)->y-6, (bullets+i)->x+2, (bullets+i)->y+6, al_map_rgb(255, 0, 0));
    }
  }
}

//drawing enemy bullets primitives
void draw_en_bullets(Bullet *bullets){
	int i;
	for(i=0; i<en_n_bullets; i++){
		if((bullets+i)->live){
			//bullet rectangle
			al_draw_filled_rectangle((bullets+i)->x-2, (bullets+i)->y, (bullets+i)->x+2, (bullets+i)->y+10, al_map_rgb(0, 255, 0));
		}
	}
}
 
//initializng a background
Background* init_background(char *str){
  Background* bgrnd=NULL;
  bgrnd=(Background*)malloc(sizeof(Background));
  bgrnd->x=0;
  bgrnd->y=0;
  bgrnd->bitmap=al_load_bitmap(str);
  //background speed(scroll speed)
  bgrnd->speed=3;
  return bgrnd;
}

//destroy background
void destroy_background(Background *bgrnd){
  al_destroy_bitmap(bgrnd->bitmap);
}

//background is just used to keep track of the position of drawing the next bitmap.
//to scroll two bitmaps are taken as input.2 bitmap1 s are drawn between each bitmap2 so that bitmap2 gets ebough time to
//randomise
void rand_bitmap(ALLEGRO_BITMAP* bitmap2, ALLEGRO_BITMAP* bitmap1,  ALLEGRO_BITMAP* BG, int **map_array){
  int i, j;
  //initialize map_array
  for(i=0;i<5;i++){
    for(j=0;j<5;j++){
      *(*(map_array+i)+j)=0;
    }
  }
  //drawing the plain ocean on bitmap1
  al_set_target_bitmap(bitmap1);      
  for(i=0;i<5;i++){
    for(j=0;j<5;j++){
      al_draw_bitmap_region(BG, map_array[i][j]*128, 0, 128, 128, 128*i, 128*j, 0);
    }
  }

  //randomise map_array
  for(i=0;i<islands;i++){
    j=rand()%25;
    map_array[j/5][j%5]=rand()%2;
  }
  //drawing the randomised map_array to bitmap2
  al_set_target_bitmap(bitmap2);      
  for(i=0;i<5;i++){
    for(j=0;j<5;j++){
      al_draw_bitmap_region(BG, map_array[i][j]*128, 0, 128, 128, 128*i, 128*j, 0);
    }
  }
}


//function that stores high scores
void high_scores(int score){
  int i,j;

  //save three high scores
  Highscore scores[3];
  FILE* fr=NULL;
  FILE* fw=NULL;

  fr=fopen("high_scores.bin", "rb");

  if(fr == NULL){
    //means that never created
    //create a file
    fw=fopen("high_scores.bin", "wb");
    //print score to function
    printf("You have a high score!\n");
    printf("Enter your name\n");
    fgets(scores[0].name, 50, stdin);
    scores[0].val=score;
    //write score and name to file
    fwrite(&scores[0], sizeof(Highscore), 1, fw);
    fflush(fw);
    fclose(fw);
  }

  else{
    //file already exists
    //read values of file into scores
    for(i=0; i<3; i++){
      if(fread(&scores[i], sizeof(Highscore), 1, fr) == 0)
	break;
    }
    //scores has three values
    //add new score in ascending value
    for(j=0; j<i; j++){
      if(scores[j].val < score){
	break;
      }
    }
    
    //shifting values of scores from ith position
    if(j<3){
      //reuse i
      for(i=j-1; i>=0; i--){
	scores[i+1].val=scores[i].val;
	strcpy(scores[i+1].name, scores[i].name);
      }

      //enter your name
      printf("You have a high score!\n");
      printf("Enter your name\n");
      fgets(scores[j].name, 50, stdin);
      scores[j].val=score;

      fw=fopen("high_scores.bin", "wb");
      //write values of scores in fw
      for(i=0; i<j+1; i++){
	if(fwrite(&scores[i], sizeof(Highscore), 1, fw) == 0)
	  break;
      }
      fflush(fw);
      fclose(fw);
    }
    fclose(fr);
  }
}

//function that prints high scores to the terminal
void print_scores(){
  int i;
  FILE* fr;
  Highscore scores[3];
  fr=fopen("high_scores.bin", "rb");
  //check if file exits
  if(fr != NULL){
    printf("HIGH SCORES\n");
    //reading from file
    for(i=0; i<3; i++){
      if(fread(&scores[i], sizeof(Highscore), 1, fr) != 0){
	printf("%d)%s %d\n", i+1, scores[i].name, scores[i].val);
      }
    }
    fclose(fr);
  }
}
    
