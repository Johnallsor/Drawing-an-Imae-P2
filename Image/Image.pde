//Global Variables
int appWidth, appHeight;
float smallerDimension, LargerDimension;
boolean widthLarger=false, heightLarger=false;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
boolean nightMode=false;
//
size(800, 600); //Landscape
//Copy Display Algorithm
appWidth = width;
appHeight = height;
//
//Aspect Ratio Calculations
//Obi-wan-star-wars-jedi-23864621-800-600.jpg
int pickWidth = 800;
int pickHeight = 600;
//Image Orientation: Landscape, Portrait, square
if( pickWidth >= pickHeight ) {//True if Landscape or Square
LargerDimension = pickWidth;
smallerDimension = pickHeight;
widthLarger = true;
} else{//False if Portrait
LargerDimension = pickHeight;
smallerDimension = pickWidth;
widthLarger = true;
}
//
//Population
pic = loadImage("../Images Used/Obi-wan-star-wars-jedi-23864621-800-600.jpg");
backgroundImageX = appWidth*0;
backgroundImageY = appHeight*0;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
//
//Rectangular Layout and Image Drawing to CANVAS
//rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
if (nightMode == false) tint(255, 190);  //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2);
if (nightMode == true) tint(64, 64, 40); //RGB: Bight Mode
//tint(64, 64, 40); //RGB: Night Mode
image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
