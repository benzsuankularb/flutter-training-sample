import 'package:flutter/material.dart';
import 'package:mobile/views/atoms/texts/small_text.dart';

class PeriodPaymentCard extends StatelessWidget {
  final void Function(int index, int value) onChange;
  final List<int> options;
  final int activeOptionIndex;

  PeriodPaymentCard({
    this.onChange,
    this.options,
    this.activeOptionIndex = -1,
  })  : assert(options != null),
        assert(activeOptionIndex != null);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        SmallText("Payment Terms (Months)"),
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: () {
              List<Widget> widgets = [];
              for (var i = 0; i < options.length; i++) {
                final option = options[i];
                widgets.add(_PeriodPaymentCardButton(
                  index: i,
                  selected: i == activeOptionIndex,
                  value: option,
                  onTap: () => onChange?.call(i, option),
                ));
              }
              return widgets;
            }(),
          ),
        ),
      ],
    ));
  }
}

class _PeriodPaymentCardButton extends StatelessWidget {
  final int index;
  final int value;
  final bool selected;
  final Function() onTap;

  _PeriodPaymentCardButton({
    this.index,
    this.value,
    this.onTap,
    this.selected,
  })  : assert(index != null),
        assert(value != null),
        assert(onTap != null),
        assert(selected != null);

  @override
  Widget build(BuildContext context) {
    if (selected) {
      return Container(
        width: 40,
        height: 40,
        alignment: Alignment.center,
        decoration: new BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        padding: EdgeInsets.all(10),
        child: Text(
          "$value",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        child: Text("$value"),
      ),
    );
  }
}
