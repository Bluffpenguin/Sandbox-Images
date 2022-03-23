//Variables
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
PImage pic1, pic2;
color red=#E82121;
//
//Geometry
fullScreen(); //size(900, 680); displayWidth, displayHeight
//Landscape Presentation, not a square or portrait
//
//Populating Variables
pic1 = loadImage("cat-gf218cc4a9_1920.jpg"); //Dimensions: width 1920, height 1280
pic2 = loadImage("michael-sum-LEpfefQf4rU-unsplash.jpg"); //Dimensions: width 4990, height 3327
//
//Aspect Ratio Calculation
int pic1Width = 1920;
int pic1Height = 1280;
int pic2Width = 3106;
int pic2Height = 4426;
int largerPic1Dimension, smallerPic1Dimension;
int largerPic2Dimension, smallerPic2Dimension;
float imageWidthRatioPic1=0.0, imageHeightRatioPic1=0.0, imageWidthRatioPic2=0.0, imageHeightRatioPic2=0.0;
Boolean widthPic1Larger=false, heightPic1Larger=false, widthPic2Larger=false, heightPic2Larger=false;
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
if (widthPic1Larger == true) imageWidthRatioPic1 = float(largerPic1Dimension) / float(largerPic1Dimension);
if (widthPic1Larger == true ) imageHeightRatioPic1 = float(smallerPic1Dimension) / float(largerPic1Dimension);
if ( heightPic1Larger == true) imageWidthRatioPic1 = float(smallerPic1Dimension) / float(largerPic1Dimension);
if ( heightPic1Larger == true) imageHeightRatioPic1 = float(largerPic1Dimension) / float(largerPic1Dimension);
if ( widthPic2Larger == true ) imageWidthRatioPic2 = float(largerPic2Dimension) / float(largerPic2Dimension);;
if ( widthPic2Larger == true ) imageHeightRatioPic2 = float(smallerPic2Dimension) / float(largerPic2Dimension);
if ( heightPic2Larger == true ) imageWidthRatioPic2 = float(smallerPic2Dimension) / float(largerPic2Dimension);
if ( heightPic2Larger == true ) imageHeightRatioPic2 = float(largerPic2Dimension) / float(largerPic2Dimension);
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
//Adjusted widths and heights to rectangle layouts
float pic1WidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted;
pic1WidthAdjusted = rectWidthPic1 * imageWidthRatioPic1;
pic1HeightAdjusted = rectHeightPic1 * imageHeightRatioPic1;
pic2WidthAdjusted = rectWidthPic2 * imageWidthRatioPic2;
pic2HeightAdjusted = rectHeightPic2 * imageHeightRatioPic2;
println (rectWidthPic1, rectHeightPic1, rectWidthPic2, rectHeightPic2);
println (pic1WidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted);
//
//Rectantle Layout and Image Printing on Canvas
fill(red);
//rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //Image 1, landscape presentation
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //Image 2, landscape presentation
// Image using Rect() Variables
//image(pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);
//image(pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);
// Change the Rect() Variables to Aspect Ratio
image(pic1, rectXPic1, rectYPic1, pic1WidthAdjusted, pic1HeightAdjusted);
println ("Image one looks good, put some text underneath it to fill in the space"); // Great Design Change for Aspect
//image(pic2, rectXPic2, rectYPic2, pic2WidthAdjusted, pic2HeightAdjusted);
//Center Image in rect(), pic2
image(pic2, rectXPic2+(rectXPic2*9/10), rectYPic2, pic2WidthAdjusted, pic2HeightAdjusted);
