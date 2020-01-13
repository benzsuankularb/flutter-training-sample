import 'package:flutter/material.dart';
import 'package:flutter_layout_workshop/views/modules/request_amount_card.dart';

class RequestAmountModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Connect to the store.
    return RequestAmountCard(
      value: 500,
      max: 1190000,
    );
  }
}
