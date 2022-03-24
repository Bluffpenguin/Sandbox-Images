//Global Variables
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
PImage pic1, pic2;
color red=#E82121;
float imageWidthRatioPic1=0.0, imageHeightRatioPic1=0.0, imageWidthRatioPic2=0.0, imageHeightRatioPic2=0.0;
Boolean widthPic1Larger=false, heightPic1Larger=false, widthPic2Larger=false, heightPic2Larger=false;
int largerPic1Dimension, smallerPic1Dimension;
int largerPic2Dimension, smallerPic2Dimension;
float pic1WidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted;
//
void setup() 
{
  fullScreen(); //size(900, 680); displayWidth, displayHeight
  //Landscape Presentation, not a square or portrait
  //
  populatingVariables();
  //
  imageDraw();
} //End Setup
//
void draw() 
{ //Note: DRAW Loop repeats 60 times / second, static images should be in SETUP, "System Resources"
  //Empty DRAW Loop, must be present for JAVA Compiler
} //End Draw
//
void keyPressed() 
{
} //End keyPressed
//
void mousePressed() 
{
} //End mousePressed
