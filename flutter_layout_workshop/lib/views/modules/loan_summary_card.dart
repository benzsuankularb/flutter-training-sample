import 'package:flutter/material.dart';
import 'package:flutter_layout_workshop/views/atoms/generic_card.dart';
import 'package:flutter_layout_workshop/views/atoms/generic_devider.dart';
import 'package:flutter_layout_workshop/views/atoms/generic_tab_bar.dart';
import 'package:flutter_layout_workshop/views/atoms/texts/clickable_text.dart';
import 'package:flutter_layout_workshop/views/modules/labels/amount_label.dart';
import 'package:flutter_layout_workshop/views/modules/labels/loan_pending_duration_label.dart';
import 'package:flutter_layout_workshop/views/modules/period_payment_card.dart';

class LoanSummaryCard extends StatelessWidget {
  final double max;
  final double monthly;
  final List<int> periodOptions;
  final int activePeriodOption;
  final Duration duration;
  final Function(int option) onPeriodOptionChange;
  final Function onSelect;

  const LoanSummaryCard({
    this.max,
    this.monthly,
    this.periodOptions,
    this.onPeriodOptionChange,
    this.activePeriodOption,
    this.duration,
    this.onSelect,
  })  : assert(max != null),
        assert(monthly != null),
        assert(periodOptions != null),
        assert(duration != null);

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
                        ClickableText("+ SHOW MORE"),
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
