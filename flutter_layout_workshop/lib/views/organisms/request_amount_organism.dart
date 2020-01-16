import 'package:flutter/material.dart';
import 'package:flutter_layout_workshop/views/modules/request_amount_card.dart';

class RequestAmountOrganism extends StatefulWidget {
  @override
  _RequestAmountOrganismState createState() => _RequestAmountOrganismState();
}

class _RequestAmountOrganismState extends State<RequestAmountOrganism> {
  // double value = 50;

  @override
  Widget build(BuildContext context) {
    // Connect to the store.
    return RequestAmountCard(
      value: 1000,
      max: 1190000,
      onChanged: (value) => {},
    );
  }
}
