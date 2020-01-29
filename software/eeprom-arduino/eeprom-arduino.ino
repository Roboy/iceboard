#include <Wire.h>

#define ADDR_Ax 0b000 //A2, A1, A0
#define ADDR (0b1010 << 3) + ADDR_Ax

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  Serial.println("hello");
  Wire.begin();
  writeI2CByte(0, 128);
  
}

void loop() {
  // put your main code here, to run repeatedly:
  Serial.println(readI2CByte(0));
  delay(1000);
}

void writeI2CByte(byte data_addr, byte data){
  Wire.beginTransmission(ADDR);
  Wire.write(data_addr);
  Wire.write(data);
  Wire.endTransmission();
}

byte readI2CByte(byte data_addr){
  byte data = NULL;
  Wire.beginTransmission(ADDR);
  Wire.write(data_addr);
  Wire.endTransmission();
  Wire.requestFrom(ADDR, 1); //retrieve 1 returned byte
  delay(1);
  if(Wire.available()){
    data = Wire.read();
  }
  return data;
}
