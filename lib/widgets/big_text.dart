import 'package:flutter/material.dart';
import 'package:untitled1/utils/dimensions.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size; //these are the parameters we will pass
  TextOverflow overFlow;
  BigText({
    Key? key,
    this.color= const Color(0xFF332d2b),
    required this.text,
    this.overFlow= TextOverflow.fade,
    this.size= 16
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style:TextStyle(
          color:color,
          fontWeight: FontWeight.w400,
          fontSize:size==0?Dimensions.font20:size
      ),
    );
  }
}
