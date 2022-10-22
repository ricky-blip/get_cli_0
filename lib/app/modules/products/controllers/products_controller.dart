import 'package:get/get.dart';

class ProductsController extends GetxController {
  RxList<Map<String, dynamic>> allProducts = <Map<String, dynamic>>[
    {
      "id": DateTime.now().toIso8601String(),
      "name": "Sandals.",
      "price": 100,
    },
    {
      "id": DateTime.now().toIso8601String(),
      "name": "Shoes",
      "price": 200,
    },
    {
      "id": DateTime.now().toIso8601String(),
      "name": "Shirts",
      "price": 50,
    },
  ].obs;

  void addProduct(String name, String price) {
    if (name.isNotEmpty && price.isNotEmpty) {
      allProducts.add(
        {
          "id": DateTime.now().toIso8601String(),
          "name": name,
          "price": int.parse(price),
        },
      );
      Get.back();
    }
  }
}
