import 'package:flutter/material.dart';
import 'package:flutter_layout_workshop/views/modules/product_comparision_card.dart';
import 'package:flutter_layout_workshop/views/organisms/request_amount_model.dart';

class ProductSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hola"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            RequestAmountModel(),
            ProductComparisionCard(),
          ],
        ),
      ),
    );
  }
}
