import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:untitled1/controller/popular_product_controller.dart';
import 'package:untitled1/pages/food/popular_food_details.dart';
import 'package:untitled1/pages/food/recommended_food.dart';
import 'package:untitled1/pages/home/food_page_body.dart';
import 'package:untitled1/pages/home/mainfoodpage.dart';
import 'helper/dependencies.dart'as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainFoodPage(),
    );
  }
}



