import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/products_controller.dart';

class ProductsView extends GetView<ProductsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductsView'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.allProducts.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            controller.allProducts[index]["name"],
          ),
        ),
      ),
    );
  }
}
