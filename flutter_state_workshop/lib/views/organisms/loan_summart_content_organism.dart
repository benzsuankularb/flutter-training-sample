import 'package:flutter/material.dart';
import 'package:mobile/views/modules/loan_summary_content.dart';

class LoanSummaryContentOrganism extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LoanSummaryContent(
      duration: Duration.zero,
      max: 10000,
      monthly: 1000,
      onPeriodOptionChange: (option) => {},
      periodOptions: [1, 2, 3, 4, 5],
      activePeriodOption: 2,
    );
  }
}
