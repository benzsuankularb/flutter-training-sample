import 'package:flutter/material.dart';

class MySlider extends StatelessWidget {
  final double value;
  final double min;
  final double max;
  final Function(double) onChanged;

  MySlider({
    this.onChanged,
    this.value,
    this.min,
    this.max,
  });
  @override
  Widget build(BuildContext context) {
    return Slider(
      onChanged: onChanged,
      value: value,
      min: min,
      max: max,
      activeColor: Colors.yellow,
      inactiveColor: Colors.grey,
    );
  }
}
