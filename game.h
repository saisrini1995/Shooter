/* K. SAi Srinivas
   cs13b039
*/

#ifndef GAME_H
#define GAME_H

#include <allegro5/allegro.h>
#include <allegro5/allegro_primitives.h>
#include <allegro5/allegro_image.h>
#include <allegro5/allegro_font.h>
#include <allegro5/allegro_ttf.h>
#include <allegro5/allegro_audio.h>
#include <allegro5/allegro_acodec.h>
#include <stdlib.h>
#include <stdio.h>
#include <time.h>

//game constants
#define EN 3 //number of enemies at a time
#define MAX_ENEMIES 10 //maximum number of enemies on the screen
extern int FPS; //frames per second
extern int BPS; //number of bullets fired per second
extern int n_bullets; //maximum number of bullets on the screen
extern int en_BPS; //number of bullets fired by an enemy plane
extern int en_n_bullets; //number of enemy bullets that ca be on the screen 
extern int islands; //the maximum number of islands on the screen
extern bool keys[];


enum KEYS{UP, DOWN, LEFT, RIGHT};

//SpaceShip is the player structure
typedef struct SpaceShip_{
  //all we need for now is just position and speed
  int x;
  int y;
  int speed;
  int health;
  bool live;
}SpaceShip;

//The Bullet struct is defined here
typedef struct bullet_{
  //all we need is position and state of the bullet
  int x;
  int y;
  int speed;
  bool live;
  //bullet 'direction' of travel
  float dir;
  //condition for collision
  bool condition[MAX_ENEMIES];
}Bullet;

//The Enemy struct denotes the enemy ship
typedef struct Enemies_{
  int x;
  int y;
  int speed;
  bool live;
  bool explode;
  //all enemies do not shoot bullets
}Enemy;

//The background struct is used to scroll the background
typedef struct Background_{
  ALLEGRO_BITMAP* bitmap;
  //x and y are used to animate
  int x;
  int y;
  int speed;
}Background;

//high score struct
typedef struct Highscore_{
  int val;
  char name[50];
}Highscore;

//initialize a spaceship
SpaceShip* init_ship();

//returns an initialized Bullet array
Bullet* init_bullets(const int n_bullets);

//creates a bullet array for enemy ships
Bullet* init_en_bullets(int en_n_bullets);

//draws the ship
void draw_ship(SpaceShip *, ALLEGRO_BITMAP*);

//draws bullet primitives
void draw_bullets(Bullet *);

//draw enemy bullets primitives
void draw_en_bullets(Bullet*);

//initialize a background,and return a pointer
Background* init_background(char *);

//destroy the given background
void destroy_background(Background *);

//creates random bitmaps which will be drawn later
//temp 2 contains the randomised bitmap while temp1 contains plain ocean
void rand_bitmap(ALLEGRO_BITMAP* bitmap2, ALLEGRO_BITMAP* bitmap1 , ALLEGRO_BITMAP*, int **);

//shooter function
int shooter(ALLEGRO_DISPLAY* display, ALLEGRO_EVENT_QUEUE* queue, ALLEGRO_EVENT_QUEUE* timer_queue, ALLEGRO_EVENT event, ALLEGRO_EVENT timer_event, ALLEGRO_TIMER* timer, ALLEGRO_TIMER* bullet_timer, ALLEGRO_FONT* font);

//high score
void high_scores(int score);

//printing highscores
void print_scores();


#endif
