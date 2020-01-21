import 'package:flutter/material.dart';
import 'package:mobile/views/atoms/generic_card.dart';
import 'package:mobile/views/atoms/generic_devider.dart';
import 'package:mobile/views/modules/labels/amount_label.dart';
import 'package:mobile/views/modules/labels/loan_pending_duration_label.dart';
import 'package:mobile/views/modules/period_payment_card.dart';

class LoanSummaryContent extends StatelessWidget {
  const LoanSummaryContent({
    @required this.max,
    @required this.duration,
    @required this.periodOptions,
    @required this.activePeriodOption,
    @required this.onPeriodOptionChange,
    @required this.monthly,
    this.onSelect,
  })  : assert(max != null),
        assert(monthly != null),
        assert(periodOptions != null),
        assert(duration != null);

  final double max;
  final Duration duration;
  final List<int> periodOptions;
  final int activePeriodOption;
  final Function(int option) onPeriodOptionChange;
  final double monthly;
  final Function onSelect;

  @override
  Widget build(BuildContext context) {
    return GenericCard(
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        AmountLabel(
                          title: "Maximum loan amount",
                          amount: max,
                        ),
                        LoanPendingDurationLabel(
                          duration: duration,
                        ),
                      ],
                    ),
                  ),
                  GenericDivider(),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        PeriodPaymentCard(
                          options: periodOptions,
                          activeOptionIndex:
                              periodOptions.indexOf(activePeriodOption),
                          onChange: (index, value) =>
                              onPeriodOptionChange?.call(value),
                        ),
                        AmountLabel(
                          title: "Monthy payment",
                          amount: monthly,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
