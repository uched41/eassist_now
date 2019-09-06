#include "stdio.h"
#include <cpr/cpr.h>
#include <iostream>
#include "rs232.h"
#include <string>

#ifdef _WIN32
#include <Windows.h>
#else
#include <unistd.h>
#endif

// Serial settings
#define baud_rate 9600
const char mode[] = {'8','N','1',0};

// Assistnow server details
const char*  primary_server = "online-live1.services.u-blox.com";
const char*  secondary_server = "online-live2.services.u-blox.com";
const char*  token = "2PbB3sSU4UG604B3kNnkpg";

// Misc varibles
volatile bool stop = false;

// Function definitions
int get_comport_number();
void check_keypress();

int main(void){
	printf("Starting assistNow application \n");
	
	// Get port number 
	int portnum = get_comport_number();
	if(portnum<0) return 0;

	// Attempt to open serial port
	if(RS232_OpenComport(portnum, baud_rate, mode, 0)){
    	printf("Can not open COM port\n");
		return 0;
  	}

  	// Try to Download data from server
  	printf("Trying to get data from: %s\n", primary_server);
	auto response = cpr::Get(
		cpr::Url{primary_server},
		cpr::Parameters{
			{"token", token},
			{"gnss", "gps"},
			{"datatype", "eph,pos,aux"}
		}
	);
	printf("%s\n", (response.url).c_str());
	auto ans = response.status_code;

	if(ans == 200){
		printf("Data Downloaded from server: %s\n", primary_server);
	}
	else{
		printf("Error. Unable to download data: %s\n", (response.text).c_str());
		return 0;
	}

	int data_len = stoi(response.header["content-length"]);

	// Send data to u-blox receiver
	printf("Sending data to u-blox receiver\n");
	if(RS232_SendBuf(portnum, (unsigned char*)response.text.c_str(), data_len) < 0){
		printf("Error occured while sending data\n");
		return 0;
	}
	RS232_flushTX(portnum);
	printf("Sent successfully.\n");
    
    // Read new incoming data
    printf("Polling u-blox receiver. Press any key to exit ...\n");
    std::thread(check_keypress);
    unsigned char buf[128];
    while(1){
    	if(stop) break;
	    auto n = RS232_PollComport(portnum, buf, 127);
	    if(n > 0){
	      buf[n] = 0;   /* always put a "null" at the end of a string! */
	      printf("%s",(char *)buf);
	    }

#ifdef _WIN32
    Sleep(100);
#else
    usleep(100000);  /* sleep for 100 milliSeconds */
#endif
    }

    RS232_CloseComport(portnum);
    return 0;
}


int get_comport_number(){
	printf("Enter COM Port for u-blox receiver: \nExample: COM1, COM2...\n");
	std::string comstring;
	std::cin>>comstring;
	int value;

	value = RS232_GetPortnr(comstring.c_str());
	if(value > -1){
		return value;
	};
	printf("Invalid Entry.\n");
	return value;
}

void check_keypress(){
	std::cin.get();
	stop = true;
}