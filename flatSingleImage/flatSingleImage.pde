//Global Variables
float imageX, imageY, imageWidth, imageHeight, imageWidthRatio=0.0, imageHeightRatio=0.0;
float largerDimension, smallerDimension;
PImage pic;
Boolean widthLarger=false, heightLarger=false;

//
//size(600, 300);
fullScreen(); //fullScreen; displayWidth, displayHeight
//Population
pic = loadImage("cat-gf218cc4a9_1920.jpg"); //Dimensions: width 1920, height 1280
//Find the larger dimension for aspect ratio
int picWidth = 1920;
int picHeight = 1280;
  if (picWidth >= picHeight) 
{
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else {
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
}//End Dimensions Comparison 
println(smallerDimension, largerDimension, widthLarger, heightLarger); //Verifying Variable details
//Note: single line IFs can be summarized to IF-ELSE or IF-ELSEIF-ELSE
if ( widthLarger == true) imageWidthRatio = largerDimension / largerDimension ;
if ( widthLarger == true) imageHeightRatio = smallerDimension / largerDimension ;
if ( heightLarger == true) imageHeightRatio = largerDimension / largerDimension;
if ( heightLarger == true) imageWidthRatio = smallerDimension / largerDimension;
println(imageWidthRatio, imageHeightRatio, smallerDimension/largerDimension); //Verify Variable Values
//Note: println() also verifies decimal places, compiler will truncate
// Answers must be 1.0 and between 0 & 1 (decimal)
//Ratio 1.0 similar to style="width:100%" (websites)
//Ratio "0.667" similar to style="height:auto" (websites)
imageX = displayWidth*0;
imageY = displayHeight*0;
imageWidth = displayWidth*imageWidthRatio;
imageHeight = displayHeight*imageHeightRatio;
if (imageWidth > displayWidth) println("ERROR: Image is too wide") ; //Simple Display Checker
if (imageHeight >displayHeight) println("ERROR: Image is too high") ; //Simple Display Checker

//
//Rectangle Layout
rect(imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, imageWidth, imageHeight);
