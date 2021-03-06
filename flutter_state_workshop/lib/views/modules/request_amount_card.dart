import 'package:flutter/material.dart';
import 'package:mobile/views/atoms/generic_slider.dart';
import 'package:mobile/views/modules/labels/request_amount_label.dart';
import 'package:mobile/views/modules/labels/small_max_amount_label.dart';

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
      padding: EdgeInsets.symmetric(vertical: 20),
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
