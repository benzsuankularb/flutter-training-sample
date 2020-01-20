import 'package:flutter/material.dart';
import 'package:flutter_layout_workshop/views/atoms/generic_slider.dart';
import 'package:flutter_layout_workshop/views/modules/labels/request_amount_label.dart';
import 'package:flutter_layout_workshop/views/modules/labels/small_max_amount_label.dart';

class RequestAmountCard extends StatefulWidget {
  final double value;
  final double max;
  final Function(double) onValueChanged;
  RequestAmountCard({
    this.value,
    this.max,
    this.onValueChanged,
  });

  @override
  _RequestAmountCardState createState() => _RequestAmountCardState();
}

class _RequestAmountCardState extends State<RequestAmountCard> {
  double perciseValue;

  @override
  void initState() {
    super.initState();
    setState(() {
      perciseValue = widget.value;
      print("SETTED $perciseValue");
    });
  }

  @override
  void didUpdateWidget(RequestAmountCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {
      perciseValue = widget.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RequestAmountLabel(
            amount: perciseValue,
          ),
          GenericSlider(
            onDoneChanged: widget.onValueChanged,
            onChanged: (v) => setState(() {
              perciseValue = v;
            }),
            min: 0,
            max: widget.max,
            value: perciseValue,
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
