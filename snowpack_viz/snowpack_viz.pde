import processing.serial.*;
import processing.sound.*;


Serial myPort;

PImage[] snowpack = new PImage[25];

SoundFile water0;
SoundFile water1; 
SoundFile water2;
SoundFile water3;
SoundFile water4;

String[] waterPercent = {"0 - 40%", "40 - 80%", "80 - 120%", "120 - 160%", "160 - 200%"};
String[] year = {"1985", "1995", "2005", "2015", "2018"};
int Xtext = 120; 
int Ytext = 250;
int lineGap = 60;
int rectWidth = 170;
int LrectWidth = 82; 
int rectHeight = 35; 

int wetMeter = 0;
int timeMeter = 0;

int placeImg = displayWidth/2 + 280; 


void setup () {
  size(displayWidth, displayHeight);        // window size
  background(255);
  // List all the available serial ports  
  String portName = Serial.list()[6];
  myPort = new Serial(this, portName, 9600);
  
  for (int i = 0; i<snowpack.length; i++){
    snowpack[i]= loadImage("snowpack" + i + ".png");
  }
  
  //water0 = new SoundFile(this, "0_water.wav");
  //water1 = new SoundFile(this, "1_water.wav");
  //water2 = new SoundFile(this, "2_water.wav");
  //water3 = new SoundFile(this, "3_water.wav");
  //water4 = new SoundFile(this, "4_water.wav");
  
  String percent = "Percentage of Normal Historic Snowpack"; 
  textSize(20);
  text(percent, Xtext, Ytext - lineGap);
  
  for (int i = 0; i<waterPercent.length; i++){
    fill(0);
    textSize(28);
    text(waterPercent[i], Xtext, Ytext+(lineGap *i)); 
  }
  
  String year = "Year"; 
  textSize(20);
  text(year, display Width - Xtext*2, Ytext - lineGap); 
  
  for (int i =0; i<year.length; i++){
    fill(0);
    textSize(28);
    text(year[i], displayWidth - Xtext*2, Ytext+(lineGap *i));
  }

  textSize(40);
  text("How Much Snow Is There Compared to the 'Normal' Historical Snowpack?",placeImg, 100); 
  
  
}

void draw () {
 
    background(255);


//1985
  if (timeMeter >= 0 && timeMeter <= 55 &&
      wetMeter >= 224 && wetMeter <= 255){
      image(snowpack[0],placeImg,0);
      fill(238, 66, 244); 
      noStroke();
      rect(Xtext -5, Ytext - (lineGap/2 * 1) , rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext - (lineGap/2 * 1), LrectWidth, rectHeight);
      
   } else if(timeMeter >= 0 && timeMeter <= 55 &&
     wetMeter >= 168 && wetMeter <= 223){
      image(snowpack[1],placeImg,0);
      noStroke();
      fill(238, 66, 244); 
      rect(Xtext -5, Ytext + (lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext - (lineGap/2 * 1), LrectWidth, rectHeight);

   } else if(timeMeter >= 0 && timeMeter <= 55 &&
     wetMeter >= 112 && wetMeter <167){
      image(snowpack[2],placeImg,0);
      noStroke();      
      fill(238, 66, 244); 
      rect(Xtext -5, Ytext + (lineGap + lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext - (lineGap/2 * 1), LrectWidth, rectHeight);
      
   } else if(timeMeter >= 0 && timeMeter <= 55 &&
     timeMeter >= 56 && timeMeter <= 111){
       image(snowpack[3],placeImg,0);
      noStroke();       
      fill(238, 66, 244); 
      rect(Xtext -5, Ytext + (lineGap*2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext - (lineGap/2 * 1), LrectWidth, rectHeight);
      
   } else if(timeMeter >= 0 && timeMeter <= 55 &&
     timeMeter >= 0 && timeMeter <= 55){
       image(snowpack[4],placeImg,0);
      noStroke();
      fill(238, 66, 244); 
      rect(Xtext -5, Ytext + (lineGap*2 + lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext - (lineGap/2 * 1), LrectWidth, rectHeight);
      
 //1995     
   } else if(timeMeter >= 56 && timeMeter <= 111 &&
     wetMeter >= 224 && wetMeter <= 255){
       image(snowpack[5],placeImg,0);  
      noStroke();       
      fill(238, 66, 244); 
      rect(Xtext -5, Ytext - (lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext + (lineGap/2), LrectWidth, rectHeight);
       
   } else if(timeMeter >= 56 && timeMeter <= 111 &&
     wetMeter >= 168 && wetMeter <= 223){
       image(snowpack[6],placeImg,0);
      noStroke();       
      fill(238, 66, 244);
      rect(Xtext -5, Ytext + (lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext + (lineGap/2), LrectWidth, rectHeight);
      
   } else if(timeMeter >= 56 && timeMeter <= 111 &&
     wetMeter >= 112 && wetMeter <= 167){
       image(snowpack[7],placeImg,0);
      noStroke();
      fill(238, 66, 244);
      rect(Xtext -5, Ytext + (lineGap + lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext + (lineGap/2), LrectWidth, rectHeight);
       
   } else if(timeMeter >= 56 && timeMeter <= 111 &&
     wetMeter >= 56 && wetMeter <= 111){
     image(snowpack[8],placeImg,0);
      noStroke();
      fill(238, 66, 244);
      rect(Xtext -5, Ytext + (lineGap*2 + lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext + (lineGap/2), LrectWidth, rectHeight);
     
   } else if(timeMeter >= 56 && timeMeter <= 111 &&
     wetMeter >= 0 && wetMeter <= 55){
     image(snowpack[9],placeImg,0);
      noStroke();
      fill(238, 66, 244);
      rect(Xtext -5, Ytext + (lineGap*3 + lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext + (lineGap/2), LrectWidth, rectHeight);
 //2005     
   } else if(timeMeter >= 112 && timeMeter <= 167 &&
     wetMeter >= 224 && wetMeter <= 255){
     image(snowpack[10],placeImg,0);
      noStroke();
      fill(238, 66, 244); 
      rect(Xtext -5, Ytext - (lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext + (lineGap + lineGap/2), LrectWidth, rectHeight);
      
   } else if(timeMeter >= 112 && timeMeter <= 167 &&
     wetMeter >= 168 && wetMeter <= 223){
     image(snowpack[11],placeImg,0);
      noStroke();
      fill(238, 66, 244); 
      rect(Xtext -5, Ytext + (lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext + (lineGap + lineGap/2), LrectWidth, rectHeight);
      
   } else if(timeMeter >= 112 && timeMeter <= 167 &&
     wetMeter >= 112 && wetMeter <= 167){
     image(snowpack[12],placeImg,0);
      noStroke();
     fill(238, 66, 244); 
      rect(Xtext -5, Ytext + (lineGap + lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext + (lineGap + lineGap/2), LrectWidth, rectHeight);
     
   } else if(timeMeter >= 112 && timeMeter <= 167 &&
     wetMeter >= 56 && wetMeter <= 111){
     image(snowpack[13],placeImg,0);
      noStroke();
     fill(238, 66, 244); 
      rect(Xtext -5, Ytext + (lineGap*2 + lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext + (lineGap + lineGap/2), LrectWidth, rectHeight);
     
   } else if(timeMeter >= 112 && timeMeter <= 167 &&
     wetMeter >= 0 && wetMeter <= 55){
     image(snowpack[14],placeImg,0);
      noStroke();
      fill(238, 66, 244); 
      rect(Xtext -5, Ytext + (lineGap*3 + lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext + (lineGap + lineGap/2), LrectWidth, rectHeight);
//2015
   } else if(timeMeter >= 168 && timeMeter <= 223 &&
     wetMeter >= 224 && wetMeter <= 255){
     image(snowpack[15],placeImg,0);
      noStroke();
      fill(238, 66, 244); 
      rect(Xtext -5, Ytext - (lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext + (lineGap*2 + lineGap/2), LrectWidth, rectHeight);
          
   } else if(timeMeter >= 168 && timeMeter <= 223 &&
     wetMeter >= 168 && wetMeter <= 223){
     image(snowpack[16],placeImg,0);
      noStroke();
      fill(238, 66, 244); 
      rect(Xtext -5, Ytext + (lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext + (lineGap*2 + lineGap/2), LrectWidth, rectHeight);
      
   } else if(timeMeter >= 168 && timeMeter <= 223 &&
     wetMeter >= 112 && wetMeter <= 167){
     image(snowpack[17],placeImg,0);
      noStroke();
      fill(238, 66, 244); 
      rect(Xtext -5, Ytext + (lineGap + lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext + (lineGap*2 + lineGap/2), LrectWidth, rectHeight);
      
   } else if(timeMeter >= 168 && timeMeter <= 223 &&
     wetMeter >= 56 && wetMeter <= 111){
     image(snowpack[18],placeImg,0);
      noStroke();
      fill(238, 66, 244); 
      rect(Xtext -5, Ytext + (lineGap*2 + lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext + (lineGap*2 + lineGap/2), LrectWidth, rectHeight);
      
   } else if(timeMeter >= 168 && timeMeter <= 223 &&
     wetMeter >= 0 && wetMeter <= 55){
     image(snowpack[19],placeImg,0);
      noStroke();
      fill(238, 66, 244); 
      rect(Xtext -5, Ytext + (lineGap*3 + lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext + (lineGap*2 + lineGap/2), LrectWidth, rectHeight);
//2018     
   } else if(timeMeter >= 224 && timeMeter <= 255 &&
     wetMeter >= 224 && wetMeter <= 255){
     image(snowpack[20],placeImg,0);
      noStroke();
      fill(238, 66, 244); 
      rect(Xtext -5, Ytext - (lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext + (lineGap*3 + lineGap/2), LrectWidth, rectHeight);
      
   } else if(timeMeter >= 224 && timeMeter <= 255 &&
     wetMeter >= 168 && wetMeter <= 223){
     image(snowpack[21],placeImg,0);
      noStroke();
      fill(238, 66, 244); 
      rect(Xtext -5, Ytext + (lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext + (lineGap*3 + lineGap/2), LrectWidth, rectHeight);
      
   } else if(timeMeter >= 224 && timeMeter <= 255 &&
     wetMeter >= 112 && wetMeter <= 167){
     image(snowpack[22],placeImg,0);
      noStroke();
       fill(238, 66, 244); 
      rect(Xtext -5, Ytext + (lineGap + lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext + (lineGap*3 + lineGap/2), LrectWidth, rectHeight);
      
   } else if(timeMeter >= 224 && timeMeter <= 255 &&
     wetMeter >= 56 && wetMeter <= 111){
     image(snowpack[23],placeImg,0);
      noStroke();
      fill(238, 66, 244); 
      rect(Xtext -5, Ytext + (lineGap*2 + lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext + (lineGap*3 + lineGap/2), LrectWidth, rectHeight);
      
   } else if(timeMeter >= 224 && timeMeter <= 255 &&
     wetMeter >= 0 && wetMeter <= 55){
     image(snowpack[24],placeImg,0);
      noStroke();
      fill(238, 66, 244); 
      rect(Xtext -5, Ytext + (lineGap*3 + lineGap/2), rectWidth, rectHeight); 
      rect(displayWidth - Xtext*2 -5, Ytext + (lineGap*3 + lineGap/2), LrectWidth, rectHeight);
      
   } else {
     print("not finished!"); 
   }
   
   //if (wetMeter >= 0 && wetMeter <=55){
   //  water0.play();
   //  delay(5000);
   //} else {
   //  water1.play();
   //  delay(5000);
   //}
   //waterSound(wetMeter); 
   
  
  while (myPort.available () > 1) {
    // read in the last byte sent from arduino (pot 2)
    wetMeter = myPort.read();
    // and the next byte (first one was discarded)
    timeMeter = myPort.read();
  }  
    println(wetMeter, timeMeter);

    for (int i = 0; i<waterPercent.length; i++){
    fill(0);
    textSize(28);
    text(waterPercent[i], Xtext, Ytext+(lineGap *i)); 
  }
  
  for (int i =0; i<year.length; i++){
    fill(0);
    textSize(28);
    text(year[i], displayWidth - Xtext*2, Ytext+(lineGap *i));
  }
  
    textSize(40);
    String title = "How Much Snow Is There Compared to the 'Normal' Historical Snowpack?";
    text(title,placeImg, 20, 750, 500); 
    
  
} 

  
//void waterSound(int wetMeter) {
 
//  switch(wetMeter) {
//    case wetMeter >= 0 && wetMeter<=55: 
//  }
  
//  //while(wetMeter >= 0 && wetMeter<=55){
//  //  water0.loop();
//  //}
  
  
//   // if (wetMeter >= 0 && wetMeter <=55){
//   //    water0.loop();
//   //    delay(5000);
//   //} else {
//   //  water1.play();
//   //  delay(5000);
//   //}
//}
