//this file contains the main function

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
#include <string.h>

int main(void){
  int i,j;
  char str[15];

  //file pointer
  FILE* fr=NULL;
  Highscore scores[3];
 
  //initialize allegro and primitives
  if(!al_init() || !al_init_primitives_addon() ||!al_init_image_addon() ){
    printf("Error\n");
    return 0;
  }
  al_init_font_addon();
  if(!al_init_ttf_addon()){
    printf("Error\n");
    return 0;
  }
  if(!al_install_audio() || !al_init_acodec_addon()){
    printf("Error\n");
    return 0;
  }

  //create display
  ALLEGRO_DISPLAY* display=al_create_display(640, 640);
  if(!display){
    printf("Error\n");
    return 0;
  }

  //initializing fonts
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
  
  //allegro event queue
  ALLEGRO_EVENT ev;
  ALLEGRO_EVENT_QUEUE* que=al_create_event_queue();  
  if(!que){
    printf("Error\n");
    al_destroy_display(display);
    return 0;
  }

  //Taking mouse events in queue
  if(!al_install_mouse()){
    printf("error installing mouse\n");
    al_destroy_display(display);
    al_destroy_event_queue(que);
    return 0;
  }
  al_register_event_source(que, al_get_mouse_event_source());
  al_register_event_source(que, al_get_display_event_source(display));

  //creating bitmaps
  //ALLEGRO_BITMAP* menu=NULL;
  //menu= al_load_bitmap("menu.bmp");
  ALLEGRO_BITMAP* play=al_load_bitmap("play.png");
  //ALLEGRO_BITMAP* score=al_load_bitmap("score.png");
  ALLEGRO_BITMAP* quit=al_load_bitmap("quit.png");

  //=========================================creating menu=========================//
  //it will have buttons play, high scores, quit
  
  //bool play=false, score=false, quit=false;
  bool done=false;
  bool a[2]={false, false};
  bool b[2]={false, false};

  while(!done){
    //waiting for event
    al_wait_for_event(que, &ev);
    
    //mouse button click
    if(ev.type == ALLEGRO_EVENT_MOUSE_BUTTON_DOWN){
      //check if click is above a button
      if(((ev.mouse.x)>= 262) && ((ev.mouse.x) <=378)){
	if(ev.mouse.y >= 130 && ev.mouse.y <=150)
	  //start button
	  a[0]=true;
	if(ev.mouse.y >= 330 && ev.mouse.y <=350)
	  //start button
	  a[1]=true;
      }
    }

    //mouse button release
    if(ev.type == ALLEGRO_EVENT_MOUSE_BUTTON_UP){
      //check if click is above a button
      if(((ev.mouse.x)>= 262) && ((ev.mouse.x) <=378)){
	if(ev.mouse.y >= 130 && ev.mouse.y <=250)
	  //start button
	  b[0]=true;
	if(ev.mouse.y >= 330 && ev.mouse.y <=350)
	  //start button
	  b[1]=true;
      }	

      if(a[0] && b[0]){
	//start the game
	shooter(display, queue, timer_queue, event, timer_event, timer, bullet_timer, font);
      }

      else if(a[1] && b[1]){
	//quit from game
	print_scores();
	done=true;
      }

      for(i=0; i<2; i++){
	a[i]=false;
	b[i]=false;
      }
    }
    
    if(ev.type == ALLEGRO_EVENT_DISPLAY_CLOSE)
      done=true;  

    //draw the menu
    al_clear_to_color(al_map_rgb(0, 0, 255));
    al_draw_bitmap(play, 262, 130, 0);
    al_draw_bitmap(quit, 262, 330, 0);
    al_flip_display();
    al_clear_to_color(al_map_rgb(0, 0, 0)); 
    
    //clear event queues, queue, timer_queue

  }
  
  //destroy bitmap and queue
  al_destroy_display(display);
  al_destroy_event_queue(que);
  al_destroy_timer(timer);
  al_destroy_timer(bullet_timer);
  al_destroy_event_queue(queue);
  al_destroy_event_queue(timer_queue);

}
