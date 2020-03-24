#define USE_USBCON

#include <ros.h>
#include <std_msgs/Float32.h>

ros::NodeHandle nh;

std_msgs::Float32 msg;
ros::Publisher uart_data("uart_data", &msg);

void setup() {
  analogWriteResolution(12); // set the analog output resolution to 12 bit (4096 levels)
  Serial1.begin(115200);
  nh.initNode();
  nh.advertise(uart_data);
}

int level = 1000;
bool dir = true;
int max = 2500, min = 850;
//int max = 4095, min = 0;

int32_t val = 0;

void loop() {
  if(dir)
    level+=10;
  else 
    level-=10;
  if(level>=max){
    dir = false;
    level = max;
  }
  if(level<=min){
    dir = true;
    level = min;
  }
  analogWrite(DAC0, level);
//  delay(10);
  if(Serial1.available()){
    msg.data = Serial1.read();
    uart_data.publish( &msg );
    nh.spinOnce();
  }
}
