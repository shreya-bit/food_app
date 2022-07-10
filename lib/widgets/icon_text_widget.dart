import 'package:flutter/material.dart';
import 'package:untitled1/utils/dimensions.dart';
import 'package:untitled1/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  const IconAndTextWidget({Key? key,
    required this.icon,
    required this.text,
    required this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color:iconColor,size: Dimensions.iconSize24,),
        SizedBox(width:5,),//now we need distance btw the icon and text
        //so we add a sized box, which will be rendered after the icon since its a row
        SmallText(text: text, color:iconColor),

      ],
    );
  }
}
