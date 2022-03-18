//Global Variables
float imageX, imageY, imageWidth, imageHeight, imageWidthRatio=0, imageHeightRatio=0;
int largerDimension, smallerDimension;
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
//println(smallerDimension, largerDimension); //Verifying Variable details
//Note: single line IFs can be summarized to IF-ELSE or IF-ELSEIF-ELSE
if ( widthLarger == true) imageWidthRatio = largerDimension / largerDimension;
if ( widthLarger == true) imageHeightRatio = smallerDimension / largerDimension;
if ( heightLarger == true) imageHeightRatio = largerDimension / largerDimension;
if ( heightLarger == true) imageWidthRatio = smallerDimension / largerDimension;
println(imageWidthRatio, ImageHeightRatio); //Verify Variable Values
imageX = displayWidth*0;
imageY = displayHeight*0;
imageWidth = displayWidth;
imageHeight = displayHeight;

//
//Rectangle Layout
rect(imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, imageWidth, imageHeight);
