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
// Include the AccelStepper Library
#include "src/AccelStepper/AccelStepper.h"

// Include the HC-SR04 code (non blocking https://www.instructables.com/Non-blocking-Ultrasonic-Sensor-for-Arduino/)
#include "src/HC_SR04/HC_SR04.h"

// Define the pins for the HC-SR04 sonar module
#define TRIG_PIN 3
#define ECHO_PIN 2
#define ECHO_INT 0

// Define the input pins and their usesage
#define BAT_PIN A5
#define IR1 A3
#define IR2 A2
#define IR3 A1
#define IR4 A0

// Define the output Pins
#define ON_CHARGE 12
#define PI_ON 13
#define IRLEDS A4

// Debug (this can now be changed from the serial console)
bool debug = 1;


// String is not a primative (will look that up later?) NotQuiteHere tells me it
// needs a capital letter… and I am not allowed to #define string String to make
// the compiler fix it for me.
String sendData{};
int bufferLen{};

// Define step constant
// If you want to drive the motor at full step, this should be 4
// If you want to drive the motor at half steps, this should be 8.
#define FULLSTEP 8
const int STEPPER_SPEED = 900;
// const int ACCELERATION = 10;

// vairiables

int batVoltage  = 0;
bool ir_leds    = 0;
int ir1Val      = 0;
int ir2Val      = 0;
int ir3Val      = 0;
int ir4Val      = 0;
char direction  = 's';

// this code came from https://www.instructables.com/id/BananaRaspberry-Pi-Arduino-Rover-With-Webcam/
// and then NotQuiteHere happened to it
char incomingByte; // variable to receive data from the serial port

// This is distance that the sonar can see in cm.
// this is a volatile as it changes very offten, and if its not, the value does
// not update as quickly as it should.
// https://www.arduino.cc/reference/en/language/variables/variable-scope-qualifiers/volatile/
volatile int sonarDistance = 0;

// Define Wheels constant

// What is the Diamiter of the wheel?
const float wheelDia = 40;

const float pi = 3.14;
const float wheel_circ = wheelDia * pi;

// The 28BYJ-48 motor has 32 steps per revolution, however with the 1/63.6…
// gearbox, means that for a single revolution of the output shaft, we are
// looking at 2038 steps.

const float stepsPermm = 2038 / wheel_circ;

// Creates two instances of the stepermotor
// Pins entered in sequence IN1-IN3-IN2-IN4 for proper step sequence, pinout
// diagram can be found in the Arduino code folder.
// code from https://lastminuteengineers.com/28byj48-stepper-motor-arduino-tutorial/

AccelStepper stepperLHS(FULLSTEP, 8, 10, 9, 11);
AccelStepper stepperRHS(FULLSTEP, 4, 6, 5, 7);

// Create the instance of the Sonar sensor.

HC_SR04 sonar(TRIG_PIN, ECHO_PIN, ECHO_INT);

void setup() {
  // put your setup code here, to run once:

  // Lets start serial port
  Serial.begin(9600);
  while(!Serial);

  // Setup the sonar module
  sonar.begin();

  // set the maximum speed, acceleration factor,
  // initial speed and the target position
  stepperLHS.setMaxSpeed(STEPPER_SPEED);
  stepperRHS.setMaxSpeed(STEPPER_SPEED);


  pinMode(ON_CHARGE, INPUT);
  pinMode(PI_ON, OUTPUT);
}

void loop()
{
  // do things baised on serial messages…
  if ( Serial.available() > 0 ) // if data is available to read
  {
    incomingByte = Serial.read(); // read it and store it in 'incomingByte'

  }

  switch (incomingByte) {
    case 'q':
      // drive left
      stepperLHS.setSpeed(STEPPER_SPEED / 2);
      stepperRHS.setSpeed(STEPPER_SPEED);
      direction  = 'q';
      break;
    case 'w':
      // forwards
      stepperLHS.setSpeed(STEPPER_SPEED);
      stepperRHS.setSpeed(STEPPER_SPEED);
      direction  = 'w';
      break;
    case 'e':
      // drive right
      stepperLHS.setSpeed(STEPPER_SPEED);
      stepperRHS.setSpeed(STEPPER_SPEED / 2);
      direction  = 'e';
      break;
    case 'a':
      // turn left
      stepperLHS.setSpeed(0);
      stepperRHS.setSpeed(STEPPER_SPEED);
      direction  = 'a';
      break;
    case 's':
      // stop
      stepperLHS.setSpeed(0);
      stepperRHS.setSpeed(0);
      direction  = 's';
      break;
    case 'd':
      // turn right
      stepperLHS.setSpeed(STEPPER_SPEED);
      stepperRHS.setSpeed(0);
      direction  = 'd';
      break;
    case 'z':
      // hard left
      stepperLHS.setSpeed(-STEPPER_SPEED);
      stepperRHS.setSpeed(STEPPER_SPEED);
      direction  = 'a';
      break;
    case 'x':
      // back
      stepperLHS.setSpeed(-STEPPER_SPEED);
      stepperRHS.setSpeed(-STEPPER_SPEED);
      direction  = 'x';
      break;
    case 'c':
      // hard right
      stepperLHS.setSpeed(STEPPER_SPEED);
      stepperRHS.setSpeed(-STEPPER_SPEED);
      direction  = 'c';
      break;

    case 'm':
      // this turns debug on and off from the serial monitor
      debug = !debug;
      incomingByte = '_';
      break;
  }

  // This bit does the sonar rangefinder stuffs
  if (sonar.isFinished())
  {
    // put the current reading into a vairiable and run the sensor again…
    sonarDistance = sonar.getRange();
    sonar.start();
  }


  // Read the analoge pins and map them to 0-100 as more readable (loss of
  // resolution should not be an issue).
  // we only do this every so offten, this is to try and reduce the amount of
  // serial and processing time used (map should be fairly low utilisation?)


  if (sendData.length() > 0) {
    bufferLen = Serial.availableForWrite();
    if (sendData.length() > bufferLen) {
      Serial.print(sendData.substring(0,bufferLen));
      sendData = sendData.substring(bufferLen);
    } else {
      Serial.println(sendData);
      sendData = "";
    }
  } else {
    sendData = serialOutput(debug);
  }

  // Sets the speed of the stepperRHS
  stepperLHS.runSpeed();
  stepperRHS.runSpeed();
}

String serialOutput(bool debug) {
  String sendData{};

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

  if (debug)
  {
    // Assemble data into a human readable version
    sendData = "uptime: " + String(millis());
    sendData += " ms\tBat V: " + String(batVoltage);
    sendData += " %\tIRLEDs " + String(ir_leds);
    sendData += "\t1: " + String(ir1Val);
    sendData += "\t2: " + String(ir2Val);
    sendData += "\t3: " + String(ir3Val);
    sendData += "\t4: " + String(ir4Val);
    sendData += "\tSonar: " + String(sonarDistance);
    sendData += " cm\tDirection: " + String(direction);
    // sendData += " cm\tLHS Distance: " + String(stepperLHS.distanceToGo());
    // sendData += " steps\tCurrent pos: " + String(stepperLHS.currentPosition());
    // sendData += " steps\tRHS Distance: " + String(stepperRHS.distanceToGo());
    // sendData += " steps\tCurrent pos: " + String(stepperLHS.currentPosition());
    sendData += "\tByte: " + String(incomingByte);
  } else {
    // less human readable than above
  }
  return sendData;
}
