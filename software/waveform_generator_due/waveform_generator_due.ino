

void setup() {
  analogWriteResolution(12); // set the analog output resolution to 12 bit (4096 levels)
}

int level = 0;
bool dir = true;
//int max = 2500, min = 850;
int max = 4095, min = 0;

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
//  delay(1);
}
