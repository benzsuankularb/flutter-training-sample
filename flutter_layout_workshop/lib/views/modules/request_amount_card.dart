import 'package:flutter/material.dart';
import 'package:flutter_layout_workshop/views/atoms/my_slider.dart';

import 'labels/request_amount_label.dart';
import 'labels/small_max_amount_label.dart';

class RequestAmountCard extends StatelessWidget {
  final double value;
  final double max;
  RequestAmountCard({this.value, this.max});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RequestAmountLabel(
            amount: value,
          ),
          MySlider(
            onChanged: (v) => {},
            min: 0,
            value: value,
            max: max,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SmallMaxAmountLabel(amount: max),
          ),
        ],
      ),
    );
  }
}
