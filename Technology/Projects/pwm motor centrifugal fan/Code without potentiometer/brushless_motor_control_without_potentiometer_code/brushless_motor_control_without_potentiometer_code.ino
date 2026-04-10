#include <Servo.h>
Servo myservo1;
Servo myservo2;

void setup()
{
  Serial.begin(9600);
  myservo1.attach(9);  //PWM Pin Connetion
  myservo2.attach(6);
  delay(1);
  myservo1.write(10);  //DO NOT CHANGE! Required to activate ESC
  myservo2.write(10);
  delay(5000);
}

void loop()
{
  while(Serial.available()>0)
  {
    int val = Serial.parseInt();  //reads integer values sent through serial monitor
                                  //minimum start value =65
    Serial.println(val);          //Displays read int value
    myservo1.write(val);           //Writes read int value to ESC 
    myservo2.write(val);



    delay(1000);
  }
}
