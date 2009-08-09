#define LEFT_BUTTON_PIN    8
#define DOWN_BUTTON_PIN    9
#define UP_BUTTON_PIN     10
#define RIGHT_BUTTON_PIN  11
#define RELOAD_BUTTON_PIN 12

#define BUTTON_DELAY 400

int reload_stat = 0;
int up_stat     = 0;
int down_stat   = 0;
int right_stat  = 0;
int left_stat   = 0;
void setup()
{
  pinMode(RIGHT_BUTTON_PIN,INPUT);
  pinMode(LEFT_BUTTON_PIN,INPUT);
  Serial.begin(9600);
}

void loop()
{
  reload_stat = digitalRead(RELOAD_BUTTON_PIN);
  up_stat = digitalRead(UP_BUTTON_PIN);
  down_stat  = digitalRead(DOWN_BUTTON_PIN);
  right_stat = digitalRead(RIGHT_BUTTON_PIN);
  left_stat  = digitalRead(LEFT_BUTTON_PIN);
  if (reload_stat == HIGH){
    Serial.print('O');
    delay(BUTTON_DELAY);
  } 
  if (up_stat == HIGH){
    Serial.print('U');
    delay(BUTTON_DELAY);
  } 
  if (down_stat == HIGH){
    Serial.print('D');
    delay(BUTTON_DELAY);
  } 
  if (right_stat == HIGH){
    Serial.print('R');
    delay(BUTTON_DELAY);
  } 
  if(left_stat == HIGH){
    Serial.print('L');
    delay(BUTTON_DELAY);
  }
}
