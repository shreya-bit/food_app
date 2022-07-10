import 'package:flutter/material.dart';
import 'package:untitled1/utils/colors.dart';
import 'package:untitled1/utils/dimensions.dart';

import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';
import 'food_page_body.dart';
class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print("current width is "+MediaQuery.of(context).size.width.toString());
    return Scaffold(
      body:Column(
        children: [
          Container(

              child: Container(
                margin: EdgeInsets.only(top: 45, bottom: 15),
                  padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(//for place name
                        children: [
                          BigText(text:"India",color:AppColors.mainColor),
                          Row(
                            children: [
                              SmallText(text:"Bengaluru",color: Colors.black54),
                              Icon(Icons.arrow_drop_down_rounded),
                            ],
                          ),
                        ],
                      ),
                      Center(
                        child: Container(//for search button
                            width: 50,
                            height:50,
                            child: Icon(Icons.search, color: Colors.white, size: Dimensions.iconSize24+10,),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.radius20),
                              color: AppColors.mainColor,
                            )
                        ),
                      )
                    ],
                  )
              )
          ),
          //to make the rest of the part scrollable
          Expanded(child:SingleChildScrollView(
            child:FoodPageBody(),
          )),
        ],
      )
    );
  }
}
