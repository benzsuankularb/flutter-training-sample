import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobile/stores/loan_store.dart';
import 'package:mobile/views/modules/request_amount_card.dart';
import 'package:provider/provider.dart';

class RequestAmountOrganism extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loanStore = Provider.of<LoanStore>(context);
    return Observer(
      builder: (_) => RequestAmountCard(
        value: loanStore.requestLoanValue,
        max: loanStore.maxLoanValue,
        onValueChanged: (value) => loanStore.changeRequestLoanValue(value),
      ),
    );
  }
}
