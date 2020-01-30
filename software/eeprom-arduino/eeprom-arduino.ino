#include <Wire.h>

#define ADDR_Ax 0b000 //A2, A1, A0
#define ADDR (0b1010 << 3) + ADDR_Ax

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  while(!Serial)
  Serial.println("hello");
  Wire.begin();
}

int incomingByte = 0; // for incoming serial data

void loop() {
  if (Serial.available() > 0) {
    // read the incoming byte:
    incomingByte = Serial.read();

    // say what you got:
    Serial.print("I received: ");
    Serial.println(incomingByte, HEX);
    // put your main code here, to run repeatedly:
    if(incomingByte==0 || incomingByte == 255){
      Serial.println("invalid bus id 0 or 255, choose another one");
    }else{
      writeI2CByte(0,incomingByte);
      Serial.println(readI2CByte(0));
      delay(1000); 
    }
  }
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
