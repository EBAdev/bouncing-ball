//lav en masse variabler vi bruger senere
float rectX = 0;
float rectY = 600;
int cirkelX = 300, cirkelY = 300, cirkelRadius = 10, cirkelXSPEED = 2, cirkelYSPEED = 1;

void setup() {
  size(600, 600);
}


void draw() {
  background(0);

  //Tegn en Firkant der skrumper mod midten 
  noFill();
  stroke(255);
  strokeWeight(3);
  rect(rectX, rectX, rectY, rectY);

  rectY -= 0.4; 
  rectX += 0.2;// funktion der gør det hele mindre rectY skal være dobbelt så stor da vi også rykker firkantens position

  //tegn en cirkel inde i firkanten og send den i en retning
  fill(255);
  noStroke();
  ellipseMode(CENTER);
  ellipse(cirkelX, cirkelY, cirkelRadius, cirkelRadius);

  cirkelX = cirkelX+ cirkelXSPEED; 
  cirkelY = cirkelY+ cirkelYSPEED;

//Flowcontrol statements der tjekker om cirklen har paseret firkantens kanter
  if (cirkelX > rectX+rectY - cirkelRadius) {
    cirkelXSPEED = -2;
  } else if (cirkelX < rectX + cirkelRadius) {
    cirkelXSPEED = +2;
  } else if (cirkelY > rectX + rectY - cirkelRadius) {
    cirkelYSPEED = -2;
  } else if (cirkelY < rectX + cirkelRadius) {
    cirkelYSPEED = +2;
  }

}
