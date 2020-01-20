import 'package:flutter/material.dart';
import 'package:mobile/views/atoms/generic_card.dart';
import 'package:mobile/views/atoms/generic_tab_bar.dart';

class LoanSummaryCard extends StatelessWidget {
  final Function onSelect;
  final WidgetBuilder buildContent;

  const LoanSummaryCard({
    this.buildContent,
    this.onSelect,
  }) : assert(buildContent != null);

  @override
  Widget build(BuildContext context) {
    return GenericCard(
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            GenericTabBar(
              tabs: ["AUTO LOAN", "HIRE PURCHASE"],
            ),
            buildContent(context),
            GestureDetector(
              onTap: onSelect,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                alignment: Alignment.center,
                color: Colors.yellow,
                child: Text("SELECT"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
