#include "Arduino.h"

#define PWM_1_PIN 26  // PA9
#define PWM_2_PIN 27  // PA8

#define RIGHT_IN1 19
#define RIGHT_IN2 18
#define LEFT_IN1 20
#define LEFT_IN2 21


#define RX 0x5258 //Joystique droite axe X
#define RY 0x5259 //Joystique droite axe Y
#define LX 0x4C58 //Joystique gauche axe X
#define LY 0x4C59 //Joystique gauche axe Y
#define R2 0x5232 //Gachette droite
#define L2 0x4C32 //Gachette gauche
#define BV 0x4256 //Bouton triangle
#define B9 0x4223 //Bouton carrée => on recoit B#
#define BX 0x4258 //Bouton croix
#define BO 0x424F //Bouton rond
#define BH 0x4248 //Bouton Haut
#define BB 0x4242 //Bouton Bas
#define BG 0x4247 //Bouton Gauche
#define BD 0x4244 //Bouton Droite
#define BR 0x4252 //Bouton droite R1
#define BL 0x424C //Bouton gauche L1
#define JR 0x4A52 //Bouton joystique droite
#define JL 0x4A4C //Bouton joystique gauche
#define SE 0x5345 //Bouton select
#define ST 0x5354 //Bouton start
#define PS 0x5053 //Bouton PS

#define M 0x4D //MODE DE FONCTIONNEMENT DE LA MANETTE

#define END_COMM '\n'
#define MAX_KEYS 2

//valeurs variable (gachettes ou joysticks)
uint8 r2,
		l2,
		R_joystick_X = 127,
		L_joystick_X = 127,
		R_joystick_Y = 127,
		L_joystick_Y = 127;

//valeurs binaires (boutons)
uint8 bv = 0, b9 = 0, bx = 0, bo = 0, bh = 0, bb = 0, bg = 0, bd = 0, br = 0, bl = 0, jr = 0, jl = 0, se = 0, st = 0, ps = 0;

//paramètres de la PWM
uint8 pwm_left, pwm_right;
uint16 pwm_final_left = 0, pwm_final_right = 0;
uint8 offset = 127;
uint8 multiplieur = 16; //12 en sécurité, 16 en pwm max

//paramètres de la comm
uint8 key, key_number = 0;
uint8 keys[4];
uint8 value;
uint16 code;
uint8 mode = 1;

//Déclaration yolo des fonctions
void gauche_av();
void gauche_ar();
void droite_av();
void droite_ar();
void debug();
void comm_buetooth();
void update_motors();


void setup() {

	//Setup du timer de PWM => 32kHz
	HardwareTimer timer1(1);
	timer1.setPrescaleFactor(1);
	timer1.setOverflow(2048);

	//Sortie
	pinMode(LED_BUILTIN, OUTPUT);
	pinMode(LEFT_IN1, OUTPUT);
	pinMode(LEFT_IN2, OUTPUT);
	pinMode(RIGHT_IN1, OUTPUT);
	pinMode(RIGHT_IN2, OUTPUT);

	// Preparing the first PWM signal
	digitalWrite(PWM_1_PIN, LOW);
	pinMode(PWM_1_PIN, PWM);
	pwmWrite(PWM_1_PIN, 0);

	// Preparing the second PWM signal
	digitalWrite(PWM_2_PIN, LOW);
	pinMode(PWM_2_PIN, PWM);
	pwmWrite(PWM_2_PIN, 0);

	//Démarrage du Serial avec l'aduino pro-mini qui s'occupe du bluetooth
	Serial3.begin(9600);
}


void loop() {

	if (Serial3.available())
		comm_buetooth();

	update_motors();

}

/**
 * PROGRAMME BRENDA/CRICKETTE
 */

void comm_buetooth() {

	key = (uint8) Serial3.read();

	if (key != END_COMM) {
		keys[key_number] = key;
		key_number++;
	} else {

		code = (uint16) ((keys[0] << 8) | (keys[1] & 0xff));
		value = keys[2];


		if (code == LY)
			L_joystick_Y = value;
		if (code == RY)
			R_joystick_Y = value;

		//A mettre : tout les tests de boutons lol

		key_number = 0;
	}
}

void update_motors() {

	if (mode == 1) {

		pwm_left = ~L_joystick_Y;
		pwm_right = ~R_joystick_Y;

		//Mis à jours moteur gauche
		if (pwm_left == 128) {
			pwm_final_left = 0;
		} else if (pwm_left > 128) { //joystick à droite
			gauche_av();
			pwm_final_left = (pwm_left - offset) * multiplieur;
		} else { //mode arrière
			gauche_ar();
			pwm_final_left = ((offset - (uint8) 1) - pwm_left) * multiplieur;
		}
		pwmWrite(PWM_2_PIN, pwm_final_left);

		//Mis à jours moteur droit
		if (pwm_right == 128) {
			pwm_final_right = 0;
		} else if (pwm_right > 128) { //joystick à droite
			droite_av();
			pwm_final_right = (pwm_right - offset) * multiplieur;
		} else { //mode arrière
			droite_ar();
			pwm_final_right = ((offset - (uint8) 1) - pwm_right) * multiplieur;
		}

		pwmWrite(PWM_1_PIN, pwm_final_right);

	}
}

void gauche_av() {
	digitalWrite(LEFT_IN1, HIGH);
	digitalWrite(LEFT_IN2, LOW);
}
void gauche_ar() {
	digitalWrite(LEFT_IN1, LOW);
	digitalWrite(LEFT_IN2, HIGH);
}
void droite_av() {
	digitalWrite(RIGHT_IN1, HIGH);
	digitalWrite(RIGHT_IN2, LOW);
}
void droite_ar() {
	digitalWrite(RIGHT_IN1, LOW);
	digitalWrite(RIGHT_IN2, HIGH);
}

void debug() {
	Serial.println("-----------------------");
	Serial.print("L_joystick_Y : ");
	Serial.print(L_joystick_Y);
	Serial.print("  ");
	Serial.print("R_joystick_Y : ");
	Serial.print(R_joystick_Y);
	Serial.print("\n");

	Serial.print("pwm_final_left : ");
	Serial.print(pwm_final_left);
	Serial.print("  ");
	Serial.print("pwm_final_right : ");
	Serial.print(pwm_final_right);
	Serial.print("\n");
}
