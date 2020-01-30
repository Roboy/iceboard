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
String readString;

void loop() {
  while (Serial.available()) {
   delay(2);  //delay to allow byte to arrive in input buffer
   char c = Serial.read();
   readString += c;
 }

 int value = readString.toInt();

 if (readString.length() >0) {
   Serial.println(value);
    if(value<=0 || value >= 255){
      Serial.println("invalid bus id, choose between 1-254");
    }else{
      writeI2CByte(0,value);
      delay(10);
      int value2 = readI2CByte(0);
      if(value2!=value){
        Serial.println("oh oh, something went wrong");
        Serial.print("requested value: ");
        Serial.println(value);
        Serial.print("read value: ");
        Serial.println(value2);
      }else{
        Serial.print("bus_id: ");
        Serial.print(value);
        Serial.println(" succesfully written to addr 0");
      }
    }
   readString="";
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
