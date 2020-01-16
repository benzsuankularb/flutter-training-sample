import 'package:flutter/material.dart';
import 'package:flutter_layout_workshop/views/atoms/generic_slider.dart';
import 'package:flutter_layout_workshop/views/modules/labels/request_amount_label.dart';
import 'package:flutter_layout_workshop/views/modules/labels/small_max_amount_label.dart';

class RequestAmountCard extends StatefulWidget {
  final double value;
  final double max;
  final Function(double) onChanged;
  RequestAmountCard({
    this.value,
    this.max,
    this.onChanged,
  });

  @override
  _RequestAmountCardState createState() =>
      _RequestAmountCardState(value: value);
}

class _RequestAmountCardState extends State<RequestAmountCard> {
  double value;

  _RequestAmountCardState({this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RequestAmountLabel(
            amount: widget.value,
          ),
          GenericSlider(
            onChanged: (v) {
              setState(() {
                value = v;
              });
              widget.onChanged?.call(v);
            },
            min: 0,
            value: value,
            max: widget.max,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SmallMaxAmountLabel(amount: widget.max),
          ),
        ],
      ),
    );
  }
}
