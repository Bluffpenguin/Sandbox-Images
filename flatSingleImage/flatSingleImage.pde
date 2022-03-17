//Global Variables
float imageX, imageY, imageWidth, imageHeight;
PImage pic;
//
//size(600, 300);
fullScreen();
//Population
imageX = displayWidth*0;
imageY = displayHeight*0;
imageWidth = displayWidth;
imageHeight = displayHeight;
pic = loadImage("cat-gf218cc4a9_1920.jpg"); //Dimensions: width 1920, height 1280
//
//Rectangle Layout
rect(imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, imageWidth, imageHeight);
