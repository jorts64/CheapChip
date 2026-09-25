#include <Wire.h> // Wire.h
byte input=0;
void setup()
{
  Serial.begin(115200);
  Wire.begin(); // wake up I2C bus
  Wire.beginTransmission(0x20);
  Wire.write(0x00); // IODIRA register
  Wire.write(0x00); // set entire PORT A as output
  Wire.endTransmission();
  Wire.beginTransmission(0x20);
  Wire.write(0x0D); // GPPUB register
  Wire.write(0xFF); // set entire PORT B pullups
  Wire.endTransmission();
}
 
void loop()
{
  // read the inputs of PORT B
  Wire.beginTransmission(0x20);
  Wire.write(0x13);
  Wire.endTransmission();
  Wire.requestFrom(0x20, 1);
  input=Wire.read();
  Serial.println(input);
 
  // write that input to PORT A
  Wire.beginTransmission(0x20);
  Wire.write(0x12); // address PORT A
  Wire.write(input);    // PORT A
  Wire.endTransmission();
  //delay(100); // for debounce
}
