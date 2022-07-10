import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled1/controller/popular_product_controller.dart';
import 'package:untitled1/data/api/api_client.dart';
import 'package:untitled1/data/repository/popular_product_repo.dart';
import 'package:untitled1/utils/app_constants.dart';

Future<void> init() async{
  //api client
  Get.lazyPut(()=> ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));

}