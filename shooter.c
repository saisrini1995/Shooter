 
//Space Ship shooting bullets and moving random background
//enemies are shooting bullets

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
#include "game.h"

//starting main
int shooter(ALLEGRO_DISPLAY* display, ALLEGRO_EVENT_QUEUE* queue, ALLEGRO_EVENT_QUEUE* timer_queue, ALLEGRO_EVENT event, ALLEGRO_EVENT timer_event, ALLEGRO_TIMER* timer, ALLEGRO_TIMER* bullet_timer, ALLEGRO_FONT* font){

  //for loop variables
  int i, j;
  int counter=0,b_count=0;
  int score=0;
  char str[15];

  srand(time(NULL));

  
  //===========================================allegro audio======================================//

  ALLEGRO_SAMPLE* shot1=NULL;
  ALLEGRO_SAMPLE* boom1=NULL;
  ALLEGRO_SAMPLE* boom2=NULL;
  ALLEGRO_SAMPLE* song=NULL;
  ALLEGRO_SAMPLE_INSTANCE* songInstance=NULL;
  al_reserve_samples(10);

  shot1=al_load_sample("shot1.wav");
  boom1=al_load_sample("boom1.wav");
  boom2=al_load_sample("boom2.wav");
  song=al_load_sample("song.ogg");
  songInstance=al_create_sample_instance(song);

  al_set_sample_instance_playmode(songInstance, ALLEGRO_PLAYMODE_LOOP);
  al_attach_sample_instance_to_mixer(songInstance, al_get_default_mixer());


  //===========================================creating spaceships and bullets======================================//
  SpaceShip* ship=init_ship();
  Bullet * bullets=init_bullets(n_bullets);
  
  //===========================================create and initialize 2d array which is out map======================================//
  int **map_array=(int**)malloc(5*sizeof(int*));
  for(i=0;i<5;i++)
    *(map_array+i)=(int*)malloc(5*sizeof(int));
  //initalizing the values
  for(i=0;i<5;i++){
    for(j=0;j<5;j++){
      *(*(map_array+i)+j)=0;
    }
  }

  //===========================================create enemies======================================//
  //store enemies and initializing enemies
  Enemy enemies[MAX_ENEMIES];
  for(i=0;i<MAX_ENEMIES;i++){
    enemies[i].x=0;
    enemies[i].y=0;
    //random speed
    enemies[i].speed=5;
    enemies[i].live=false;
    enemies[i].explode=false;
  }
  
  //===========================================create enemiy bullets======================================//
  //initialize enemy bullets
  Bullet* en_bullets=NULL;
  en_bullets=init_en_bullets(en_n_bullets);

  //===========================================create bitmaps======================================//
  //the background bitmap regulates scrolling
  Background *background=init_background("Tileset.jpg");
  if(!background->bitmap){
    printf("Error\n");
    return 0;
  }
  //vehicle is the psaceship bitmap
  ALLEGRO_BITMAP* vehicle=al_load_bitmap("Vehicle.bmp");
  if(!vehicle){
    printf("Error\n");
    return 0;
  }
  //making the bitmap transperant
  al_convert_mask_to_alpha(vehicle, al_get_pixel(vehicle, 0, 0));

  //temp1 and temp2 are the bitmaps used to scroll
  //temp contains the radnomised map_array
  ALLEGRO_BITMAP* temp1=NULL,*temp2=NULL;
  temp1=al_create_bitmap(640, 640);
  temp2=al_create_bitmap(640, 640);
  //initializing bitmaps temp1 and temp2
  rand_bitmap(temp2,temp1,background->bitmap, map_array);

  //enemy bitmap
  ALLEGRO_BITMAP* enemy=al_load_bitmap("Enemy1.bmp");
  if(!enemy){
    printf("Error\n");
    return 0;
  }
  //making bitmap transparent
  al_convert_mask_to_alpha(enemy, al_get_pixel(enemy, 0, 0));

  /*
  //===========================================create font======================================//
  ALLEGRO_FONT *font=al_load_ttf_font("Ubuntu-B.ttf", -30, 0);
  
  //===========================================create events and queue======================================//
  //creating event queue and event
  ALLEGRO_EVENT_QUEUE* queue=al_create_event_queue();
  ALLEGRO_EVENT_QUEUE* timer_queue=al_create_event_queue();
  ALLEGRO_EVENT event, timer_event;
  if(!queue || !timer_queue){
    printf("Error\n");
    al_destroy_display(display);
    return 0;
  }

  //===========================================take event sources into event queue======================================//
  //initializing keyboard, timer and taking event sources
  ALLEGRO_TIMER *timer=al_create_timer(1.0/FPS);
  ALLEGRO_TIMER* bullet_timer=al_create_timer(1.0/BPS);
  if(!al_install_keyboard()){
    printf("Error\n");
    al_destroy_display(display);
    return 0;
  }
  //registerevent sources
  al_register_event_source(queue, al_get_display_event_source(display));
  al_register_event_source(queue, al_get_keyboard_event_source());
  al_register_event_source(queue, al_get_timer_event_source(timer));
  //timer_queue contains only timer events for bullet fire
  al_register_event_source(timer_queue, al_get_timer_event_source(bullet_timer));
  */
  //===========================================start game loop======================================//
  //game loop
  int ship_c=0;
  bool done=false;
  bool redraw=true;
 
  //starting timers
  al_start_timer(timer);
  al_start_timer(bullet_timer);

  while(!done){
    
    //=====================play music================//
    al_play_sample_instance(songInstance);

    //=====================wait for event================//
    al_wait_for_event(queue, &event);

    //=====================if window is closed================//
    if(event.type==ALLEGRO_EVENT_DISPLAY_CLOSE){
      done=true;
    }

    //=====================create bullet based on timer_event================//
    if(al_get_next_event(timer_queue, &timer_event)){
      if(timer_event.type==ALLEGRO_EVENT_TIMER){
	for(i=0;i<n_bullets;i++){
	  //if bullet is dead, resusticate it
	  if(!(bullets+i)->live && ship->live){
	    //play music
	    al_play_sample(shot1, 0.5, 0, 2, ALLEGRO_PLAYMODE_ONCE, 0);
	    //bullet position is ship position
	    (bullets+i)->x=ship->x-32;
	    (bullets+i)->y=ship->y-54;
	    //the bullet lives!
	    (bullets+i)->live=true;
	    for(j=0;j <MAX_ENEMIES; j++){
	      ((bullets+i)->condition)[j]=false;
	    }
	    break;
	  }
	}
      }
    }


    //=====================if event is keyboard press================//
    //update the keys array
    else if(event.type==ALLEGRO_EVENT_KEY_DOWN){
      switch(event.keyboard.keycode){
      case ALLEGRO_KEY_UP:
	keys[UP]=true;
	break;
      case ALLEGRO_KEY_DOWN:
	keys[DOWN]=true;
	break;
      case ALLEGRO_KEY_LEFT:
	keys[LEFT]=true;
	break;
      case ALLEGRO_KEY_RIGHT:
	keys[RIGHT]=true;
	break;
      }
    }

    //=====================if event is key release================//
    //update keys array
    else if(event.type==ALLEGRO_EVENT_KEY_UP){
      switch(event.keyboard.keycode){
      case ALLEGRO_KEY_UP:
	keys[UP]=false;
	break;
      case ALLEGRO_KEY_DOWN:
	keys[DOWN]=false;
	break;
      case ALLEGRO_KEY_LEFT:
	keys[LEFT]=false;
	break;
      case ALLEGRO_KEY_RIGHT:
	keys[RIGHT]=false;
	break;
      case ALLEGRO_KEY_ESCAPE:
	done=true;
	break;
      }
    }

    //=====================when event is timer event, update the whole game's state================//
    if(event.type==ALLEGRO_EVENT_TIMER){
      redraw=true;

      //collisions and explosion
      i=0;j=0;
      while(1){
	j=0;
	//collision of enemy ships and bullets
	//condition is that ship should also be live
	if(i<n_bullets){
	  j=1;
	  if(((bullets+i)->live) && ship->live){
	    for(j=0;j <MAX_ENEMIES; j++){
	      if(enemies[j].live && ((enemies[j].x- (bullets+i)->x)>0) && ((enemies[j].x- (bullets+i)->x)< 64)){
		if((bullets+i)->y>enemies[j].y)
		  //bullet->condition is the fact that bullets were 'born' below the enemy spaceships
		  //if bullets were 'born' above, no collision would have taken place
		  ((bullets+i)->condition)[j]=true;
	      }
	      else{
		((bullets+i)->condition)[j]=false;
	      }
	      //destroy on collision
	      if(((bullets+i)->condition)[j] && (enemies[j].y> (bullets+i)->y)){
		//collision happened
		//play boom2 clip
		al_play_sample(boom2, 0.5, 0, 4, ALLEGRO_PLAYMODE_ONCE, 0);
		enemies[j].live=false;
		(bullets+i)->live=false;
		enemies[i].explode=true;
		score+=5;
		break;
	      }
	    }
	  }
	}
	//collision detection between enemy bullets and ship
	if(i<en_n_bullets){
	  j=1;
	  //apply collision algorithm
	  if((en_bullets+i)->live && ship->live){
	    //writing a good bounded box collision
	    if((ship->x - (en_bullets+i)->x >=10) && (ship->x - (en_bullets+i)->x <=54) && (ship->y - (en_bullets+i)->y >=5) && (ship->y - (en_bullets+i)-> y <=50)){ //|| ((ship->x - (en_bullets+i)->x >=0) && (ship->x - (en_bullets+i)->x <=64) && (ship->y - (en_bullets+i)->y >=0) && (ship->y - (en_bullets+i)->y <=64))){
	      //should not break this loop
	      //play music
	      al_play_sample(boom1, 0.5, 0, 4, ALLEGRO_PLAYMODE_ONCE, 0);
	      (en_bullets+i)->live=false;
	      ship->health -=20;
	      if(ship->health <=0){
			 ship->live=false;
			 done=true;
		  }
	    }
	  } 
	}
	//collision between spaceship and enemies
	if(i < MAX_ENEMIES){
	  j=1;
	  if(enemies[i].live && ship->live){
	    if(((ship->x -enemies[i].x >=-40) && (ship->x - enemies[i].x <=40)) && ((ship->y -enemies[i].y >=-40) && (ship->y - enemies[i].y <=40))){
	      //collision has taken place
	      //play music
	      al_play_sample(boom1, 0.5, 0, 4, ALLEGRO_PLAYMODE_ONCE, 0);
	      enemies[i].live=false;
	      ship->live=false;
          done=true;
	    }
	  }
	}
	if(!j) break;
	i++;
      }        
      
      
      //update the ship and bullets
      ship->y -=keys[UP]*(ship->speed);
      ship->y +=keys[DOWN]*(ship->speed);
      if(ship->y >=640)
	ship->y=640;
      if(ship->y <=320)
	ship->y=320;
      ship->x -=keys[LEFT]*(ship->speed);
      ship->x +=keys[RIGHT]*(ship->speed);
      if(ship->x <=64)
	ship->x=64;
      if(ship->x >=640)
	ship->x=640;

      for(i=0;i<n_bullets;i++){
	if((bullets+i)->live){
	  (bullets+i)->y -=(bullets+i)->speed;
	  if(((bullets+i)->y)<0){
	    (bullets+i)->live=false;
	  }
	}
      }

      //updating the moving background
      background->y +=background->speed;
      if(background->y >= 640*2){
	background->y=0;
	
	//creating random bitmpas temp1 an temp2 using rand_bitmap function
	//rand_bitmap(temp1, background->bitmap, map_array);
	rand_bitmap(temp2, temp1, background->bitmap, map_array);
      }

      //create enemy ships
      counter++;
      if(counter==30){
	//after two seconds, we create new enemy ships
	counter=0;
	for(i=0;i<(rand()%EN)+1;i++){
	  if(!enemies[ship_c].live){
	    //the enemy ships spawn at random x position
	    enemies[ship_c].x=rand()%640;
	    enemies[ship_c].y=-10;
	    //the created enemy ships even have random speed
	    enemies[ship_c].speed=5+2*(rand()%4);
	    enemies[ship_c].live=true;
	    //start bullet counter for ship
	    //explode= true means that ship is exploding, and that a explosion bitmap
	    //has to take the enemy ships's position for some time
	    enemies[ship_c].explode=false;
	    ship_c=(ship_c+1)%MAX_ENEMIES;
	  }
	}
      }

      //creating and upadating live enemy bullets
      b_count++;
      if(b_count == 30/en_BPS){
	b_count=0;
	//create new bullet
	for(i=0; i<en_n_bullets; i++){
	  if(!(en_bullets+i)->live){
	    //if bullet is dead, make it live
	    for(j=0; j<MAX_ENEMIES; j++){
	      j=(j+rand())%MAX_ENEMIES;
	      //get a live ship, make bullet appear out of it
	      if(enemies[j].live){
		(en_bullets+i)->live= true;
		(en_bullets+i)->x=enemies[j].x-32;
		(en_bullets+i)->y=enemies[j].y;
		if((ship->x != (en_bullets+i)->x) && (ship->y != (en_bullets+i)->y))
		  (en_bullets+i)->dir=(ship->y - (en_bullets+i)->y)/(ship->x - (en_bullets+i)->x);
		//else collision
		break;
	      }
	    }
	    break;
	  }
	}
      }
      //updating bullets
      for(i=0; i<en_n_bullets; i++){
	int m;
	if((en_bullets+i)->live){
	  (en_bullets+i)->y +=(en_bullets+i)->speed;
	  //(en_bullets+i)->x = (en_bullets+i)->x+(2*(i%2)-1)*(1);
	  if((en_bullets+i)->dir)
	    //if not zero
	    (en_bullets+i)->x +=(en_bullets+i)->speed/(en_bullets+i)->dir;
	  if((en_bullets+i)->y >=640){
	    (en_bullets+i)->y=0;
	    (en_bullets+i)->x=0;
	    //trying dir 1
	    (en_bullets+i)->dir=1;
	    (en_bullets+i)->live=false;
	  }
	}
      }      

      //update live enemy ships and kill ships if y>640
      for(i=0;i<MAX_ENEMIES;i++){
	if(enemies[i].live){
	  //update their position 
	  enemies[i].y +=enemies[i].speed;
	}
	if(enemies[i].y>=640+64){
	  enemies[i].y=-10;
	  enemies[i].live=false;
	}
      }
    }
      

    //=====================drawing all the updated positions on the display backbuffer================//
    if(redraw && al_is_event_queue_empty(queue)){
      //drawing the bitmaps

      //always set target bitmap to display backbuffer after using rand_bitmap()
      al_set_target_bitmap(al_get_backbuffer(display));
      al_draw_bitmap(temp1, 0, background->y, 0);
      al_draw_bitmap(temp2, 0, -al_get_bitmap_height(temp2)+background->y, 0);
      al_draw_bitmap(temp1, 0, 2*(-al_get_bitmap_height(temp2))+background->y, 0);

      //drawing enemies
      for(i=0;i<MAX_ENEMIES ;i++){
	if(enemies[i].live){
	  //al_draw_filled_rectangle(enemies[i].x-10, enemies[i].y-10, enemies[i].x+10, enemies[i].y+10, al_map_rgb(255, 0, 255));
	  al_draw_bitmap(enemy, enemies[i].x-64, enemies[i].y-64, 0); 
	}
      }
      
      //drawing ships and bullets
      //bullets are drawn after spaceship so that spaceship does'nt mask the bullets
      if(ship->live){
	draw_ship(ship, vehicle);
	draw_bullets(bullets);
	draw_en_bullets(en_bullets);
      }
      //draw ship health
      if(ship->live){
	al_draw_filled_rectangle(0, 0, 100, 10, al_map_rgb(0, 0, 0));
	al_draw_filled_rectangle(0, 0, ship->health, 10, al_map_rgb(255, 0, 0));
      }
      sprintf(str, "%d", score);
      //write score
      al_draw_text(font, al_map_rgb(0, 0, 0), 580, 10, 0, str);

      //flip display and get it ready for another drawing
      al_flip_display();
      al_clear_to_color(al_map_rgb(0, 0, 0));
      
      redraw=false;
    }
  }

  //stop the timer
  al_stop_timer(timer);
  al_stop_timer(bullet_timer);

  al_stop_sample_instance(songInstance);
  //printf("%d\n", score);

  //destroy all created objects
  //al_destroy_timer(timer);
  //al_destroy_timer(bullet_timer);
  //al_destroy_event_queue(queue);
  //al_destroy_event_queue(timer_queue);
  al_destroy_bitmap(temp1);
  al_destroy_bitmap(temp2);
  al_destroy_bitmap(vehicle);
  al_destroy_sample(shot1);
  al_destroy_sample(boom1);
  al_destroy_sample(boom2);
  al_destroy_sample(song);
  al_destroy_sample_instance(songInstance);
  //written function
  destroy_background(background);
  al_destroy_bitmap(enemy);
  //al_destroy_display(display);
  
  //store the high scores in a binary file
  high_scores(score);

  return 0;
}
