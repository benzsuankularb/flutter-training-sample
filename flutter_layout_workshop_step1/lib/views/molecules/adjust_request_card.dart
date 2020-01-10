import 'package:flutter/material.dart';
import 'package:flutter_layout_workshop/views/atoms/my_slider.dart';
import 'package:flutter_layout_workshop/views/molecules/labels/request_loan_label.dart';
import 'package:flutter_layout_workshop/views/molecules/labels/small_max_loan_label.dart';

class AdjustRequestCard extends StatefulWidget {
  final double min;
  final double max;
  final double value;
  final Function(double) onChange;

  AdjustRequestCard({this.min, this.max, this.value, this.onChange});

  @override
  _AdjustRequestCardState createState() => _AdjustRequestCardState(
        min: min,
        max: max,
        value: value,
        onChange: onChange,
      );
}

class _AdjustRequestCardState extends State<AdjustRequestCard> {
  double min;
  double max;
  double value;
  Function(double) onChange;

  _AdjustRequestCardState({this.min, this.max, this.value, this.onChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RequestLoanLabel(amount: value),
          AtomSlider(
            min: min,
            max: max,
            value: value,
            onChange: onChange,
          ),
          Align(
            alignment: Alignment.topRight,
            child: SmallMaxLoadLabel(
              amount: value,
            ),
          )
        ],
      ),
    );
  }
}
