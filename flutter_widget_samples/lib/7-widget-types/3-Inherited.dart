// import 'package:flutter/material.dart';

// class Sample7_3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // return MyInheritedWidget();
//   }
// }

// class MyInheritedWidget extends InheritedWidget {
//   final int data;

//   MyInheritedWidget(this.accountId, child) : super(child);

//   @override
//   bool updateShouldNotify(MyInheritedWidget old) =>
//       accountId != old.accountId || scopeId != old.scopeId;
// }

// class Child extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final myInheritedWidget = MyInheritedWidget.of(context);
//     print(myInheritedWidget.scopeId);
//     print(myInheritedWidget.accountId);
//     // myInheritedWidget.data;
//     return null;
//   }
// }
