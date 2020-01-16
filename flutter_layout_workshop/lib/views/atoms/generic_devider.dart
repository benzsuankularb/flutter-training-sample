import 'package:flutter/material.dart';

class GenericDivider extends StatelessWidget {
  const GenericDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      color: Colors.grey,
    );
  }
}
