/*******************************************************************************

  Main Swarmbot code

  Created 2021-06-01
  By Philip McGaw (mostly)

                                               .-----.
                  .----[PWR]-------------------| USB |--.
                  |                            '-----'  |
                  |         GND/RST2  [ ][ ]            |
                  |       MOSI2/SCK2  [ ][ ]  A5/SCL[ ] |   C5 n/c duplicated
                  |          5V/MISO2 [ ][ ]  A4/SDA[ ] |   C4 n/c duplicated
                  |                             AREF[ ] |
                  |                             AREF[ ] |
                  |                              GND[ ] |
                  | [ ]NC                     SCK/13[ ] |   B5 -> Pi Power on
                  | [ ]v.ref                 MISO/12[ ] |   .  <- On Charge
                  | [ ]RST                   MOSI/11[ ]~|   .  -> stepperLHS 4
                  | [ ]3V3    +---+               10[ ]~|   .  -> stepperLHS 2
                  | [ ]5v     | A |                9[ ]~|   .  -> stepperLHS 3
                  | [ ]GND   -| R |-               8[ ] |   B0 -> stepperLHS 1
                  | [ ]GND   -| D |-                    |
                  | [ ]Vin   -| U |-               7[ ] |   D7 -> stepperRHS 4
                  |          -| I |-               6[ ]~|   .  -> stepperRHS 2
        IR 1 ->   | [ ]A0    -| N |-               5[ ]~|   .  -> stepperRHS 3
        IR 2 ->   | [ ]A1    -| O |-               4[ ] |   .  -> stepperRHS 1
        IR 3 ->   | [ ]A2     +---+           INT1/3[ ]~|   .  -> Sonar Trigger
        IR 4 ->   | [ ]A3                     INT0/2[ ] |   .  <- Sonar Echo
     IR LEDS <-   | [ ]A4/SDA  RST SCK MISO     TX>1[ ] |   .  n/c TX (Via USB)
 Bat Voltage ->   | [ ]A5/SCL  [ ] [ ] [ ]      RX<0[ ] |   D0 n/c RX (Via USB)
                  |            [ ] [ ] [ ]              |
                  '--.                         .--------'
                      \_______________________/

                  HTTP://BUSYDUCKS.COM/ASCII-ART-ARDUINOS
*******************************************************************************/

// Debug (this can now be changed from the serial console)
bool debug = 0;

// because the serial buffer is normaly 64 bytes, and over running this costs us
// massive delays on the stepper motor, we change the size of this!
// https://forum.arduino.cc/t/increase-size-of-serial-buffer/235420/2
#define SERIAL_BUFFER_SIZE 256

// Define step constant
// If you want to drive the motor at full step, this should be 4
// If you want to drive the motor at half steps, this should be 8.
#define FULLSTEP 8
const int MAXSPEED = 750;
const int ACCELERATION = 500;
int speedLHS = 750;
int speedRHS = 750;
int moveLHS = 4076;
int moveRHS = -4076;

// Include the AccelStepper Library
#include "src/AccelStepper/AccelStepper.h"

// Creates two instances of the stepermotor
// Pins entered in sequence IN1-IN3-IN2-IN4 for proper step sequence, Diagram
// can be found in the folder.
// code from https://lastminuteengineers.com/28byj48-stepper-motor-arduino-tutorial/

AccelStepper stepperLHS(FULLSTEP, 8, 10, 9, 11);
AccelStepper stepperRHS(FULLSTEP, 4, 6, 5, 7);

// Define the pins for the HC-SR04 sonar module
#define TRIG_PIN 3
#define ECHO_PIN 2
#define ECHO_INT 0

// This is distance that the sonar can see in cm.
// this is a volatile as it changes very offten, and if its not, the value does
// not update as quickly as it should.
// https://www.arduino.cc/reference/en/language/variables/variable-scope-qualifiers/volatile/
volatile int sonarDistance = 0;

// Define the Analouge pins and their usesage
#define BAT_PIN A5
#define IRLEDS A4
#define IR1 A3
#define IR2 A2
#define IR3 A1
#define IR4 A0

// Define the Digital Pins
#define ON_CHARGE 12
#define PI_ON 13


// vairiables

int batVoltage  = 0;
bool ir_leds    = 0;
int ir1Val      = 0;
int ir2Val      = 0;
int ir3Val      = 0;
int ir4Val      = 0;

// Define Wheels constant

// What is the Diamiter of the wheel?
const float wheelDia = 40;

const float pi = 3.14;
const float wheel_circ = wheelDia * pi;

// The 28BYJ-48 motor has 32 steps per revolution, however with the 1/63.6… gearbox, means that for a single revolution of the output shaft, we are looking at 2038 steps.

const float stepsPermm = 2038 / wheel_circ;

// Generally, you should use "unsigned long" for variables that hold time
// The value will quickly become too large for an int to store
unsigned long previousMillis = 0;
unsigned long currentMillis = 0;

// this is the interval between analouge measurements in milliseconds (100ms is 10 Hz) there is implicit delay caused by working.
const int interval = 100;

// Include the HC-SR04 code (non blocking https://www.instructables.com/Non-blocking-Ultrasonic-Sensor-for-Arduino/)
#include "src/HC_SR04/HC_SR04.h"
HC_SR04 sonar(TRIG_PIN, ECHO_PIN, ECHO_INT);

// this code came from https://www.instructables.com/id/BananaRaspberry-Pi-Arduino-Rover-With-Webcam/
// and then NotQuiteHere happened to it
char incomingByte; // variable to receive data from the serial port

void setup() {
  // put your setup code here, to run once:

  // Lets start a serial port… because why not?
  Serial.begin(9600);
  while(!Serial);

  // Setup the sonar module
  sonar.begin();

  // set the maximum speed, acceleration factor,
  // initial speed and the target position
  stepperLHS.setMaxSpeed(MAXSPEED);
  stepperLHS.setAcceleration(ACCELERATION);
  stepperLHS.setSpeed(speedLHS);
  stepperLHS.moveTo(moveLHS);

  stepperRHS.setMaxSpeed(MAXSPEED);
  stepperRHS.setAcceleration(ACCELERATION);
  stepperRHS.setSpeed(speedRHS);
  stepperRHS.moveTo(moveRHS);

  pinMode(ON_CHARGE, INPUT);
  pinMode(PI_ON, OUTPUT);
}

void loop()
{
  // put your main code here, to run repeatedly:
  currentMillis = millis();

  // do things baised on serial messages…
  if ( Serial.available() > 0 ) // if data is available to read
  {
    incomingByte = Serial.read(); // read it and store it in 'incomingByte'

  }

  switch (incomingByte) {
    case 'w':
      // do things
      break;
    case 'a':
      // do things
      break;
    case 's':
      // stop
      break;
    case 'd':
      // right
      break;
    case 'x':
      // back
      break;

    case 'm':
      // this turns debug on and off from the serial monitor
      debug = !debug;
      incomingByte = '~';
      break;

    default:
      // this clears the incomingByte variable, which is set to carriage return
      // after a char is input, resulting in an extra line between each of the
      // serial outputs as incomingByte is printed to the console.
      incomingByte = '~';
      break;
  }

  // This bit does the sonar rangefinder stuffs
  if (sonar.isFinished())
  {
    // put the current reading into a vairiable and run the sensor again…
    sonarDistance = sonar.getRange();
    sonar.start();
  }

  // Change direction once the motor reaches target position
  if (stepperLHS.distanceToGo() == 0)
    stepperLHS.moveTo(-stepperLHS.currentPosition());
  if (stepperRHS.distanceToGo() == 0)
    stepperRHS.moveTo(-stepperRHS.currentPosition());

  // Move the motor one step
  stepperLHS.run();
  stepperRHS.run();


  // Read the analoge pins and map them to 0-100 as more readable (loss of
  // resolution should not be an issue).
  // we only do this every so offten, this is to try and reduce the amount of
  // serial and processing time used (map should be fairly low utilisation?)

  if (currentMillis - previousMillis >= interval)
  {
    previousMillis = currentMillis;

    batVoltage = analogRead(BAT_PIN);

    ir1Val = analogRead(IR1);
    ir2Val = analogRead(IR2);
    ir3Val = analogRead(IR3);
    ir4Val = analogRead(IR4);

    batVoltage = map(batVoltage, 0, 1023, 0, 100);

    ir1Val = map(ir1Val, 0, 1023, 0, 100);
    ir2Val = map(ir2Val, 0, 1023, 0, 100);
    ir3Val = map(ir3Val, 0, 1023, 0, 100);
    ir4Val = map(ir4Val, 0, 1023, 0, 100);

    serialOutput(debug);
  }

}

void serialOutput(bool debug) {
  if (debug)
    {
      // Send values through serial in a human readable way
      Serial.print("uptime: ");
      Serial.print(millis());
      Serial.print(" ms, Bat V: ");
      Serial.print(batVoltage);
      Serial.print(" %, IRLEDs ");
      Serial.print(ir_leds);
      Serial.print(", 1: ");
      Serial.print(ir1Val);
      Serial.print(" %, 2: ");
      Serial.print(ir2Val);
      Serial.print(" %, 3: ");
      Serial.print(ir3Val);
      Serial.print(" %, 4: ");
      Serial.print(ir4Val);
      Serial.print(" %, Sonar: ");
      Serial.print(sonarDistance);
      Serial.print(" cm, LHS Distance: ");
      Serial.print(stepperLHS.distanceToGo());
      Serial.print(" steps, Current pos: ");
      Serial.print(stepperLHS.currentPosition());
      Serial.print(" steps, RHS Distance: ");
      Serial.print(stepperRHS.distanceToGo());
      Serial.print(" steps, Current pos: ");
      Serial.print(stepperLHS.currentPosition());
      Serial.print(" steps, Byte: ");
      Serial.println(incomingByte);
    } else {
      // less human readable than above
    }
}
