import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/utils/dimensions.dart';
import 'package:untitled1/widgets/app_column.dart';
import 'package:untitled1/widgets/app_icon.dart';
import 'package:untitled1/widgets/expandable_text.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
          body:Stack(
            children: [
              Positioned(left: 0, right:0, child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize+8,
                decoration: BoxDecoration(
                  image:DecorationImage(
                    fit: BoxFit.cover,
                    image:AssetImage(
                      "assets/image/food0.png"
                    )
                  )
                )

              )),
              Positioned(
                top:Dimensions.height45+8,
                  left: Dimensions.width20,
                  right:Dimensions.width20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppIcon(icon: Icons.arrow_back_ios),
                      AppIcon(icon: Icons.shopping_cart_outlined)
                    ],

              )),
              Positioned(
                left: 0, right:0,
                top:Dimensions.popularFoodImgSize,
                child:Container(
                  padding: EdgeInsets.only(left: Dimensions.width20, right:Dimensions.width20, top: Dimensions.height20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      topLeft:Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.white,
                  ),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppColumn( text: 'Chinese Side'),
                      SizedBox(height: Dimensions.height20,),
                      BigText(text: "Introduce"),
                      SizedBox(height: Dimensions.height30,),
                      Flexible(child:SingleChildScrollView(child: ExpandableText(text: "Chicken is marinated, Chicken is marinated,Chicken is marinated, Chicken is marinated,Chicken is marinated, Chicken is marinated,Chicken is marinated, Chicken is marinated,Chicken is marinated, Chicken is marinated,Chicken is marinated, Chicken is marinated,Chicken is marinated, Chicken is marinated,Chicken is marinated, Chicken is marinated,Chicken is marinated, Chicken is marinated,Chicken is marinated, Chicken is marinated,")
                      ))
                    ],
                  ),
                )
              ),

            ],
          ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding:EdgeInsets.only(top:Dimensions.height30, bottom: Dimensions.height30, left:Dimensions.width20, right:Dimensions.width20),
        decoration: BoxDecoration(
          //color:Colors.red,
          color: AppColors.buttonbackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top:Dimensions.height20,bottom:Dimensions.height20, left:Dimensions.width20, right: Dimensions.width20 ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20,),
                color:Colors.white,
              ),
              child:Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text:"0"),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add,color:AppColors.signColor)
                ],
              )
            ),
            Container(
              padding: EdgeInsets.only(top:Dimensions.height20,bottom:Dimensions.height20, left:Dimensions.width20, right: Dimensions.width20 ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
              child: BigText(text:"\$10 | Add to cart", color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}
