import 'package:flutter/material.dart';

class GenericSlider extends StatelessWidget {
  final double value;
  final double min;
  final double max;
  final Function(double) onChanged;

  GenericSlider({
    this.onChanged,
    this.value,
    this.min,
    this.max,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController();
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
