#include <wiringPi.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>
#define MAXTIMINGS	85
#define DHTPIN		7

int dht11_dat[5] = { 0, 0, 0, 0, 0 };

time_t rawtime;
 
struct tm *timeinfo; 

void read_dht11_dat(){

	uint8_t laststate	= HIGH;
	uint8_t counter		= 0;
	uint8_t j		= 0, i;
	float	f; 
 
	dht11_dat[0] = dht11_dat[1] = dht11_dat[2] = dht11_dat[3] = dht11_dat[4] = 0;
 
	pinMode( DHTPIN, OUTPUT );
	digitalWrite( DHTPIN, LOW );
	delay( 18 );
	digitalWrite( DHTPIN, HIGH );
	delayMicroseconds( 40 );
	pinMode( DHTPIN, INPUT );
 
	for ( i = 0; i < MAXTIMINGS; i++ ){
		counter = 0;
		while ( digitalRead( DHTPIN ) == laststate ){
			counter++;
			delayMicroseconds( 1 );
			if ( counter == 255 ){
				break;
			}
		}

		laststate = digitalRead( DHTPIN );
 
		if ( counter == 255 )
			break;
 
		if ( (i >= 4) && (i % 2 == 0) ){
			dht11_dat[j / 8] <<= 1;
			if ( counter > 40 )
				dht11_dat[j / 8] |= 1;
			j++;
		}
	}
 
	if ( (j >= 40) &&
	     (dht11_dat[4] == ( (dht11_dat[0] + dht11_dat[1] + dht11_dat[2] + dht11_dat[3]) & 0xFF) ) )
	{
		f = dht11_dat[2] * 9. / 5. + 32;
		//printf( "Humidity = %d.%d %% Temperature = %d.%d C (%.1f F)\n",
		
		time(&rawtime);
		
		timeinfo = localtime(&rawtime);
		FILE *f; 
		f = fopen("sensorData.json", "a");

		fprintf(f, "{\"humd\":\"%d.%d\", \"temp\": \"%d.%d\", \"time\":\"%02d:%02d:%02d\"},\n",
			dht11_dat[0], dht11_dat[1], dht11_dat[2], dht11_dat[3], timeinfo->tm_hour, timeinfo->tm_min, timeinfo->tm_sec );
		fclose(f);
	}else  {
		//printf( "Data not good, skip\n" );
	}
}
 
int main( void ){

//	printf( "Raspberry Pi wiringPi DHT11 Temperature test program\n" );
 
	if ( wiringPiSetup() == -1 )
		exit( 1 );

 	int i = 0;
	
	for(i; i < 3000; i++){
		delay( 300 );
		read_dht11_dat();
	}

	return(0);
}




