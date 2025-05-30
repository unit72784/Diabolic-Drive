/*************************************************
 * This Simple Sketch was edited to suit The Diabolic Drive Hardware and ready to be flashed with no need for further editing
 * This Sketch might not work at all to flash normal ESP8266 Module ( wiring is different )
 * Simple pass-through serial flash programmer 
 * programming the ESP8266 on Diabolic Drive by the ATMEGA32U4 Chip
 * Transmissions from the ESP are passed without any modification 
 ***************************************************/
const long BAUD = 115200;

const uint8_t PROG_PIN = 20;   // GPIO0 to GND for flashing
const uint8_t RST_PIN  = 18;   // EN/RST

void setup() {
  pinMode(PROG_PIN, OUTPUT);
  pinMode(RST_PIN,  OUTPUT);

  digitalWrite(PROG_PIN, LOW); // GPIO0 low  → flash-mode
  digitalWrite(RST_PIN,  LOW); // hold reset
  delay(10);
  digitalWrite(RST_PIN,  HIGH); // release reset

  Serial1.begin(BAUD);  // HW-UART to ESP8266
  Serial .begin(BAUD);  // USB CDC to host
}

void loop() {
  while (Serial1.available()) Serial.write(Serial1.read());
  while (Serial .available()) Serial1.write(Serial.read());
}
