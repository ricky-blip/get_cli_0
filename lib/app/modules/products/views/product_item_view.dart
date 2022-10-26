import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ProductItems extends StatelessWidget {
  const ProductItems({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(data["name"]),
      subtitle: Text("USD ${data["price"]}.00,-"),
    );
  }
}
