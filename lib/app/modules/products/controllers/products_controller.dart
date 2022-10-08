import 'package:get/get.dart';

class ProductsController extends GetxController {
  RxList<Map<String, dynamic>> allProducts = <Map<String, dynamic>>[
    {
      "id": 1,
      "name": "Sandals",
      "price": 100,
    },
    {
      "id": 2,
      "name": "Shoes",
      "price": 200,
    },
    {
      "id": 3,
      "name": "Shirts",
      "price": 50,
    },
  ].obs;
}
