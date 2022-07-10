import 'package:get/get.dart';
import 'package:untitled1/data/repository/popular_product_repo.dart';

import '../models/products_model.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});
  List<dynamic>? _popularProductList=[];
  List<dynamic>? get popularProductList => _popularProductList;
  List<dynamic> pop= [];

  Future<void> getPopularProductList() async{
    Response response= await popularProductRepo.getPopularProductList();
    print(response);
    if(response.statusCode==200){
      //print("got product");
      _popularProductList=[];
      pop=Product.fromJson(response.body).products!.toList();
      _popularProductList?.addAll(pop);
     // print(pop);
      update();
    }else{

    }
  }
}