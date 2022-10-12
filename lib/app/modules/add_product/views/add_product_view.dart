import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_getcli/app/modules/products/controllers/products_controller.dart';
import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  final productC = Get.find<ProductsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddProductView'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          TextField(
            controller: controller.nameC,
            decoration: InputDecoration(labelText: "Name Product"),
          ),
          TextField(
            controller: controller.priceC,
            decoration: InputDecoration(labelText: "Price Product"),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () => productC.addProduct(
              controller.nameC.text,
              controller.priceC.text,
            ),
            child: Text("Add Product"),
          ),
        ],
      ),
    );
  }
}
