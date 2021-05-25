/************************************************************************************
*                                                  .-----.                          *
*                     .----[PWR]-------------------| USB |--.                       *
*                     |                            '-----'  |                       *
*                     |         GND/RST2  [ ][ ]            |                       *
*                     |       MOSI2/SCK2  [ ][ ]  A5/SCL[ ] |   C5                  *
*                     |          5V/MISO2 [ ][ ]  A4/SDA[ ] |   C4                  *
*                     |                             AREF[ ] |                       *
*                     |                             AREF[ ] |                       *
*                     |                              GND[ ] |                       *
*                     | [ ]NC                     SCK/13[ ] |   B5 <- Sonar Echo    *
*                     | [ ]v.ref                 MISO/12[ ] |   .  -> Sonar Trigger *
*                     | [ ]RST                   MOSI/11[ ]~|   .  -> StepperLHS 4  *
*                     | [ ]3V3    +---+               10[ ]~|   .  -> StepperLHS 2  *
*                     | [ ]5v     | A |                9[ ]~|   .  -> StepperLHS 3  *
*                     | [ ]GND   -| R |-               8[ ] |   B0 -> StepperLHS 1  *
*                     | [ ]GND   -| D |-                    |                       *
*                     | [ ]Vin   -| U |-               7[ ] |   D7 -> StepperRHS 4  *
*                     |          -| I |-               6[ ]~|   .  -> StepperRHS 2  *
*           IR 1 ->   | [ ]A0    -| N |-               5[ ]~|   .  -> StepperRHS 3  *
*           IR 2 ->   | [ ]A1    -| O |-               4[ ] |   .  -> StepperRHS 1  *
*           IR 3 ->   | [ ]A2     +---+           INT1/3[ ]~|   .  <- On Charge     *
*           IR 4 ->   | [ ]A3                     INT0/2[ ] |   .  -> Pi Power on   *
*           IR 5 ->   | [ ]A4/SDA  RST SCK MISO     TX>1[ ] |   .  -> TX (Via USB)  *
*    Bat Voltage ->   | [ ]A5/SCL  [ ] [ ] [ ]      RX<0[ ] |   D0 <- RX (Via USB)  *
*                     |            [ ] [ ] [ ]              |                       *
*                     '--.                         .--------'                       *
*                         \_______________________/                                 *
*                                                                                   *
*                                                                                   *
*                      HTTP://BUSYDUCKS.COM/ASCII-ART-ARDUINOS                      *
************************************************************************************/

// Define step constant

// If you want to drive the motor at full step, this should be 4
// If you want to drive the motor at half steps, this should be 8.

#define FULLSTEP 4

// Define the pins for the HC-SR04
#define triggerPin 12
#define echoPin 13
#define echoInt 0
// This is distance that the sonar can see in cm.
int SonarDistance = 0;

// Define the Analouge pins
#define BatPin A5
#define IR0 A4
#define IR1 A3
#define IR2 A2
#define IR3 A1
#define IR4 A0

int BatVoltage = 0;
int IR0Val = 0;
int IR1Val = 0;
int IR2Val = 0;
int IR3Val = 0;
int IR4Val = 0;

// Define Wheels constant

// What is the Diamiter of the wheel?
const float WheelDia = 40;

const float pi = 3.14;
const float Circumference = WheelDia * pi;

// The 28BYJ-48 motor has 32 steps per revolution, however with the 1/63.6… gearbox, means that for a single revolution of the output shaft, we are looking at 2038 steps.

const float StepsPermm = 2038 / Circumference;

// Debug
const int Debug = 1;

// Generally, you should use "unsigned long" for variables that hold time
// The value will quickly become too large for an int to store
unsigned long previousMillis = 0;
unsigned long currentMillis = 0;

// this is the interval between analouge measurements in milliseconds (10ms is 100 Hz) there is implicit delay caused by working.
const int interval = 10;

// Include the AccelStepper Library
#include <AccelStepper.h>

// Include the HC-SR04 code (non blocking https://www.instructables.com/Non-blocking-Ultrasonic-Sensor-for-Arduino/)
#include "HC_SR04.h"
HC_SR04 sensor(triggerPin, echoPin, echoInt);

// Creates an instance of the stepermotor
// Pins entered in sequence IN1-IN3-IN2-IN4 for proper step sequence, Diagram can be found in the folder.

// https://lastminuteengineers.com/28byj48-stepper-motor-arduino-tutorial/

AccelStepper StepperLHS(FULLSTEP, 8, 10, 9, 11);
AccelStepper StepperRHS(FULLSTEP, 4, 6, 5, 7);

void setup() {
  // put your setup code here, to run once:

  // Lets start a serial port… because why not?
  Serial.begin(57600);

  // Setup the sonar module
  sensor.start();

  // set the maximum speed, acceleration factor,
  // initial speed and the target position
  StepperLHS.setMaxSpeed(1000.0);
  StepperLHS.setAcceleration(50.0);
  StepperLHS.setSpeed(200);
  StepperLHS.moveTo(2038);

  StepperRHS.setMaxSpeed(1000.0);
  StepperRHS.setAcceleration(50.0);
  StepperRHS.setSpeed(200);
  StepperRHS.moveTo(-2038);
}

void loop() {
  // put your main code here, to run repeatedly:
  currentMillis = millis();
  // This bit does the sonar rangefinder stuffs

  if (sensor.isFinished()) {
    // Do something with the range...
    SonarDistance = sensor.getRange();
    sensor.start();
  }

  // Change direction once the motor reaches target position
  if (StepperLHS.distanceToGo() == 0)
    StepperLHS.moveTo(-StepperLHS.currentPosition());
  if (StepperRHS.distanceToGo() == 0)
    StepperRHS.moveTo(-StepperRHS.currentPosition());

  // Move the motor one step
  StepperLHS.run();
  StepperRHS.run();

  // Read the analoge pins and map them to 0-100 as more human readable (loss of resolution should not be an issue).
  if (currentMillis - previousMillis >= interval) {
    previousMillis = currentMillis;

    BatVoltage = analogRead(BatPin);

    IR0Val = analogRead(IR0);
    IR1Val = analogRead(IR1);
    IR2Val = analogRead(IR2);
    IR3Val = analogRead(IR3);
    IR4Val = analogRead(IR4);

    BatVoltage = map(BatVoltage, 0, 1023, 0, 100);

    IR0Val = map(IR0Val, 0, 1023, 0, 100);
    IR1Val = map(IR1Val, 0, 1023, 0, 100);
    IR2Val = map(IR2Val, 0, 1023, 0, 100);
    IR3Val = map(IR3Val, 0, 1023, 0, 100);
    IR4Val = map(IR4Val, 0, 1023, 0, 100);

    if (Debug == 1) {
      // Send values through serial for Serial Studio
      Serial.print("uptime: ");
      Serial.print(millis());
      Serial.print(" ms, Battery voltage: ");
      Serial.print(BatVoltage);
      Serial.print(" % , IR 1: ");
      Serial.print(IR0Val);
      Serial.print(" %, IR 2: ");
      Serial.print(IR1Val);
      Serial.print(" %, IR 3: ");
      Serial.print(IR2Val);
      Serial.print(" %, IR 4: ");
      Serial.print(IR3Val);
      Serial.print(" %, IR 5: ");
      Serial.print(IR4Val);
      Serial.print(" %, Sonar Distance: ");
      Serial.print(SonarDistance);    
      Serial.println(" cm,");
    }
  }
}
