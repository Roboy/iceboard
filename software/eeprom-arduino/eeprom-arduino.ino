#include <Wire.h>

#define ADDR_Ax 0b000 //A2, A1, A0
#define ADDR (0b1010 << 3) + ADDR_Ax

union integer_union{
  uint32_t value;
  uint8_t data[4];
};

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  while(!Serial)
  Serial.println("welcome to the iceboard eeprom programmer");
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
      integer_union baudrate, baudrate_readback;
      baudrate.value = 1000000;
      Serial.print("writing bus_id: ");
      Serial.println(value);
      Serial.print("baudrate: ");
      Serial.println(baudrate.value);
      Serial.print("raw data written: ");
      writeI2CByte(0,value);
      delay(10);
      for(int i=1;i<5;i++){
        writeI2CByte(i,baudrate.data[i-1]);
        Serial.print(baudrate.data[i-1], HEX);
        Serial.print("\t");
        delay(10);
      }
      Serial.println();

      int id = readI2CByte(0);
      Serial.print("raw data read: ");
      for(int i=1;i<5;i++){
        baudrate_readback.data[i-1] = readI2CByte(i);
        Serial.print(baudrate_readback.data[i-1], HEX);
        Serial.print("\t");
      }
      Serial.println();
      
      if(id!=value || baudrate_readback.value!=baudrate.value){
        Serial.println("oh oh, something went wrong");
        Serial.print("requested value: ");
        Serial.println(value);
        Serial.print("read id: ");
        Serial.println(id);
        Serial.print("read baudrate: ");
        Serial.println(baudrate_readback.value);
      }else{
        Serial.print("bus_id: ");
        Serial.println(value);
        Serial.print("baudrate: ");
        Serial.println(baudrate_readback.value);
        Serial.println("succesfully written");
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
