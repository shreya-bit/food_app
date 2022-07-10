import 'package:get/get.dart';

class Dimensions{
static double screenHeight= Get.context!.height;
static double screenWidth= Get.context!.width;

//screen rn is 909, but we've given say a value of 220 in places
  //so let's use 909/200  -> to get an average value i.e
static double pageViewContainer= screenHeight/4.54;
static double pageView= screenHeight/2.7;
//text we gave around 120 ig, so 909/120 =
  static double pageTextContainer= screenHeight/7.57;

  static double height10= screenHeight/90.9;
  static double height15= screenHeight/60.6;
  static double height20= screenHeight/45.4;
  static double height30= screenWidth/30.3;
  static double height45= screenWidth/20.2;
  static double height50=screenWidth/19.6;
  static double height70=screenWidth/10;

  static double width10= screenWidth/90.9;
  static double width15= screenWidth/60.6;
  static double width20= screenWidth/45.4;
  static double width30= screenWidth/30.3;
  static double width50=screenWidth/19.6;


  static double font20= screenHeight/45.4;
  static double font26= screenHeight/35;
  static double font16=screenHeight/55;

  static double radius10= screenHeight/90.9;
  static double radius20= screenHeight/45.4;
  static double radius30= screenHeight/30.3;

  //icon size
  static double iconSize24= screenHeight/45;
  static double iconSize26= screenHeight/55;

  //list view
  //screen width is 411
  static double listViewImgSize= screenWidth/3.425;
  static double listViewTextConstSize= screenWidth/3.425;

  //popular food
  static double popularFoodImgSize= screenHeight/2.7;

  //bottomheight
  static double bottomHeightBar= screenHeight/7.57;
}