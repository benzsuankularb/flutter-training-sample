import 'package:flutter/material.dart';

class LoanPendingDurationLabel extends StatelessWidget {
  final Duration duration;
  const LoanPendingDurationLabel({this.duration});

  @override
  Widget build(BuildContext context) {
    if (duration <= Duration(days: 1)) {
      return buildOneDayBadge(context);
    }
    return buildGeneralBadge(context, duration);
  }

  Widget buildGeneralBadge(BuildContext context, Duration duration) {
    return Container(
      decoration: new BoxDecoration(
        color: Colors.yellow,
        borderRadius: new BorderRadius.all(
          Radius.circular(3),
        ),
      ),
      padding: EdgeInsets.all(5),
      child: Text("Get cash in ${duration.inDays} days"),
    );
  }

  Widget buildOneDayBadge(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        color: Colors.blue,
        borderRadius: new BorderRadius.all(
          Radius.circular(3),
        ),
      ),
      padding: EdgeInsets.all(5),
      child: Text("Get cash in 24 hours"),
    );
  }
}
