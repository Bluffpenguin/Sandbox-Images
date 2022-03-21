//Variables
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
PImage pic1, pic2;
//
//Geometry
fullScreen(); //size(900, 680); displayWidth, displayHeight
//Landscape Presentation, not a square or portrait
//
//Populating Variables
pic1 = loadImage("cat-gf218cc4a9_1920.jpg"); //Dimensions: width 1920, height 1280
pic2 = loadImage("cat_cat_face_cats_eyes.jpg"); //Dimensions: width 3106, height 4426
//
//Aspect Ratio Calculation
int pic1Width = 1920;
int pic1Height = 1280;
int pic2Width = 3106;
int pic2Height = 4426;
int largerPic1Dimension, smallerPic1Dimension;
int largerPic2Dimension, smallerPic2Dimension;
float imageWidthRatioPic1, imageHeightRatioPic1, imageWidthRatioPic2, imageHeightRatioPic2;
Boolean widthPic1Larger=false, heightPic1Larger=false;
Boolean widthPic2Larger=false, heightPic2Larger=false;
//
if (pic1Width >= pic1Height) { //ID Larger Dimension: Landscape and Square
  largerPic1Dimension = pic1Width;
  smallerPic1Dimension = pic1Height;
  widthPic1Larger = true;
} else { //ID Larger Dimension: Portrait
  largerPic1Dimension = pic1Height;
  smallerPic1Dimension = pic1Width;
  heightPic1Larger = true;
} //End pic1 larger dimension ID
//
if (pic2Width >= pic2Height) {
  largerPic2Dimension = pic2Width;
  smallerPic2Dimension = pic2Height;
  widthPic2Larger = true;
} else {
  largerPic2Dimension = pic2Height;
  smallerPic2Dimension = pic2Width;
  heightPic2Larger = true;
} //End pic2 larger dimension ID
println (smallerPic1Dimension, largerPic1Dimension, smallerPic2Dimension, largerPic2Dimension); //Verifying Variable Details 
//
if (widthPic1Larger == true) imageWidthRatioPic1 = largerPic1Dimension / largerPic1Dimension;
if (widthPic1Larger == true ) imageHeightRatioPic1 = smallerPic1Dimension / largerPic1Dimension;
if ( heightPic1Larger == true) imageWidthRatioPic1 = smallerPic1Dimension / largerPic1Dimension;
if ( heightPic1Larger == true) imageHeightRatioPic1 = largerPic1Dimension / largerPic1Dimension;
if ( widthPic1Larger == true ) imageWidthRatioPic2 = largerPic2Dimension / largerPic2Dimension;;
if ( widthPic1Larger == true ) imageHeightRatioPic2 = smallerPic2Dimension / largerPic2Dimension;
if ( heightPic1Larger == true ) imageWidthRatioPic2 = smallerPic2Dimension / largerPic2Dimension;
if ( heightPic1Larger == true ) imageHeightRatioPic2 = largerPic2Dimension / largerPic2Dimension;
println (imageWidthRatioPic1, imageHeightRatioPic1, imageWidthRatioPic2, imageHeightRatioPic2); //Verifying Variable Details (Ratios)
//
rectXPic1 = displayWidth*1/4;
rectYPic1 = displayHeight*0;
rectWidthPic1 = displayWidth*1/2;
rectHeightPic1 = displayHeight*1/2;
rectXPic2 = displayWidth*1/8;
rectYPic2 = displayHeight*1/2;
rectWidthPic2 = displayWidth*6/8;
rectHeightPic2 = displayHeight*1/2;
//
//Rectantle Layout and Image Printing on Canvas
rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //Image 1, landscape presentation
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //Image 2, landscape presentation
image(pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);
image(pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);
