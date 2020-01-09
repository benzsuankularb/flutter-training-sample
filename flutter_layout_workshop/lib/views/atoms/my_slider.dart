import 'package:flutter/material.dart';

class AtomSlider extends StatelessWidget {
  final double min;
  final double max;
  final double value;
  final Function(double) onChange;

  AtomSlider({this.min, this.max, this.value, this.onChange});

  @override
  Widget build(BuildContext context) {
    return Slider(
      activeColor: Colors.yellow,
      inactiveColor: Colors.grey,
      min: min,
      max: max,
      value: value,
      onChanged: onChange,
    );
  }
}
