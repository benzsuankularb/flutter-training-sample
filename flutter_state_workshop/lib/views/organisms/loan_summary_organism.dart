import 'package:flutter/material.dart';
import 'package:mobile/views/modules/labels/compare_loan_label.dart';
import 'package:mobile/views/modules/loan_summary_card.dart';
import 'loan_summart_content_organism.dart';

class LoanSummaryOrganism extends StatelessWidget {
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
            buildContent: (_) => LoanSummaryContentOrganism(),
            onSelect: () => {},
          ),
        ],
      ),
    );
  }
}
