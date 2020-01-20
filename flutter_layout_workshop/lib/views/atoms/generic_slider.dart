import 'package:flutter/material.dart';

class GenericSlider extends StatefulWidget {
  final double value;
  final double min;
  final double max;
  final Function(double) onDoneChanged;
  final Function(double) onChanged;

  GenericSlider({
    this.onDoneChanged,
    this.onChanged,
    this.value,
    this.min,
    this.max,
  });

  @override
  _GenericSliderState createState() => _GenericSliderState();
}

class _GenericSliderState extends State<GenericSlider> {
  double _value;

  @override
  void initState() {
    super.initState();
    setState(() {
      _value = widget.value;
      print("SSSSSET $_value");
    });
  }

  @override
  void didUpdateWidget(GenericSlider oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {
      _value = widget.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Slider(
      onChanged: (v) {
        setState(() {
          _value = v;
        });
        widget.onChanged?.call(v);
      },
      onChangeEnd: (v) => widget.onDoneChanged?.call(v),
      value: _value,
      min: widget.min,
      max: widget.max,
      activeColor: Colors.yellow,
      inactiveColor: Colors.grey,
    );
  }
}
