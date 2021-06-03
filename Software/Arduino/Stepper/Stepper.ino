// https://lastminuteengineers.com/28byj48-stepper-motor-arduino-tutorial/

// Include the AccelStepper Library
#include "src/AccelStepper/AccelStepper.h"

// Define step constants
#define FULLSTEP 4
#define HALFSTEP 8

// Creates two instances
// Pins entered in sequence IN1-IN3-IN2-IN4 for proper step sequence
AccelStepper stepper1(FULLSTEP, 8, 10, 9, 11);
AccelStepper stepper2(FULLSTEP, 4, 6, 5, 7);

void setup() {
	// set the maximum speed, acceleration factor,
	// initial speed and the target position for motor 1
	stepper1.setMaxSpeed(750.0);
	stepper1.setAcceleration(500.0);
	stepper1.setSpeed(750);
	stepper1.moveTo(2038);

	// set the same for motor 2
	stepper2.setMaxSpeed(750.0);
	stepper2.setAcceleration(500.0);
	stepper2.setSpeed(750);
	stepper2.moveTo(-4076);
}

void loop() {
	// Change direction once the motor reaches target position
	if (stepper1.distanceToGo() == 0) 
		stepper1.moveTo(-stepper1.currentPosition());
	if (stepper2.distanceToGo() == 0) 
		stepper2.moveTo(-stepper2.currentPosition());

	// Move the motor one step
	stepper1.run();
	stepper2.run();
}
