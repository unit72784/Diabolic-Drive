/*************************************************
 * This Simple Sketch was edited to suit The Diabolic Drive Hardware and ready to be flashed with no need for further editing
 * This Sketch might not work at all to flash normal ESP8266 Module ( wiring is different )
 * Simple pass-through serial flash programmer 
 * programming the ESP8266 on Diabolic Drive by the ATMEGA32U4 Chip
 * Transmissions from the ESP are passed without any modification 
 ***************************************************/
int program_pin = 20;
int rst_pin = 18;

void setup()
{
  Serial1.begin(115000);
  Serial.begin(115000);
  pinMode(program_pin, OUTPUT);
  pinMode(rst_pin, OUTPUT);
  digitalWrite(program_pin, LOW);
  digitalWrite(rst_pin,LOW);
  delay(800);
  digitalWrite(rst_pin,HIGH);

  //while(!Serial);

  Serial.println("ESP8266 programmer ready.");
}

void loop()
{
  // pass data from ESP to host, if any
  while(Serial1.available())
  {
    Serial.write((uint8_t)Serial1.read());
  }

  // pass data from host to ESP, if any
  if(Serial.available())
  {
    while(Serial.available())
    {
      Serial1.write((uint8_t)Serial.read());
    }
  }
}
