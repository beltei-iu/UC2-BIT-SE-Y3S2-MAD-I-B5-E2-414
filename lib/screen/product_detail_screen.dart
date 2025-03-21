import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  String? productName;

  ProductDetailScreen({super.key, this.productName});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    // Option 1
    // String proName = widget.productName!;

    String productName = ModalRoute.of(context)!.settings.arguments as String;

    final _appBar = AppBar(
      title: Text("$productName"),
      elevation: 5,
    );

    final screen = Scaffold(
      appBar: _appBar,
      body: Center(
        child: Text("$productName"),
      ),
    );

    return screen;
  }
}
