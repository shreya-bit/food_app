import 'package:flutter/material.dart';
import 'package:untitled1/utils/colors.dart';
import 'package:untitled1/utils/dimensions.dart';
import 'package:untitled1/widgets/small_text.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  //meaning we'll initialise it later
  late String secondHalf;

  bool hiddenText=true;

  double textHeight= Dimensions.screenHeight/4.54;
  
  @override
  void initState(){
    super.initState();
    if(widget.text.length> textHeight)
      {
        firstHalf= widget.text.substring(0, textHeight.toInt());
        secondHalf= widget.text.substring(textHeight.toInt()+1, widget.text.length);
      }else{
      firstHalf=widget.text;
      secondHalf="";
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty? SmallText(size:Dimensions.font16,text:firstHalf): Column(
        children: [

          SmallText(height:1.8,color:AppColors.paraColor,text:hiddenText?(firstHalf+"..."):(firstHalf+secondHalf),),
          InkWell(
            onTap: (){
                setState((){
                  hiddenText=!hiddenText;
                });
            },
            child: Row(
              children: [
                SmallText(size:Dimensions.font16,text: "Show more/less", color: AppColors.mainColor,),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up, color: AppColors.mainColor,),
              ],
            )
          )
        ],
      ),
    );
  }
}
