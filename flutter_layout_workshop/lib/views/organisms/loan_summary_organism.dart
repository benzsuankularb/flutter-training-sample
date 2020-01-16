import 'package:flutter/material.dart';
import 'package:flutter_layout_workshop/views/modules/labels/compare_loan_label.dart';
import 'package:flutter_layout_workshop/views/modules/loan_summary_card.dart';

class LoanSummaryOrganism extends StatelessWidget {
  // TODO Inject data
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment.topLeft,
            child: CompareLoanLabel(),
          ),
          LoanSummaryCard(
            duration: Duration.zero,
            max: 100000,
            monthly: 100000,
            periodOptions: [3, 6, 12, 24, 36],
            activePeriodOption: 3,
            onPeriodOptionChange: (option) => {},
            onSelect: () => {},
          ),
        ],
      ),
    );
  }
}
