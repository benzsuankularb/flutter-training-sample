import 'package:flutter/material.dart';
import 'package:flutter_layout_workshop/views/layouts/product_comparision_page_layout.dart';
import 'package:flutter_layout_workshop/views/molecules/adjust_request_card.dart';
import 'package:flutter_layout_workshop/views/molecules/product_card.dart';
import 'package:flutter_layout_workshop/views/molecules/product_comparision_card.dart';

class ProductComparisionPage extends StatelessWidget {
  ProductComparisionPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loan Calculator"),
      ),
      body: ProductComparisionPageLayout(
        header: AdjustRequestCard(
          min: 0,
          max: 100,
          value: 0,
          onChange: (value) => {},
        ),
        body: ProductComparisionCard(
          child: ProductCard(),
        ),
      ),
    );
  }
}
