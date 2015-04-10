
#include <allegro5/allegro_audio.h>
#include <allegro5/allegro_acodec.h>

ALLEGRO_SAMPLE* shot1=NULL;
ALLEGRO_SAMPLE* shot2=NULL;
ALLEGRO_SAMPLE* boom=NULL;
ALLEGRO_SAMPLE* song=NULL;
ALLEGRO_SAMPLE_INSTANCE* songInstance=NULL;

al_install_audio();
al_init_acodec_addon();

al_reserve_samples(10);
shot1=al_load_sample("shot1.ogg");
shot2=al_load_sample("shot2.ogg");
boom=al_load_sample("boom.ogg");
song=al_load_sample("song.ogg");

songInstance=al_create_sample_instance(song);
al_set_sample_instance_playmode(songInstance, ALLEGRO_PLAYMODE_LOOP);
al_attach_sample_instance_to_mixer(songInstance, al_get_default_mixer());

al_play_sample_instance(songInstance);
al_stop_sample_instance(songInstance);

al_play_sample(shot1, 1, 0, 1, ALLEGRO_PLAYMODE_ONCE, 0);


al_destroy_sample(shot1);
al_destroy_sample(shot2); 
al_destroy_sample(boom);
al_destroy_sample(song);
al_destroy_sample_instance(songInstance);
