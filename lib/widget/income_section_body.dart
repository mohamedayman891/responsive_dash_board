import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widget/income_chart.dart';
import 'package:responsive_dash_board/widget/income_detailed_chart.dart';
import 'package:responsive_dash_board/widget/income_item_listview.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return width >= SizeConfig.desktopLayout && width < 1464
        ? Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: DetailedIncomeChart(),
            ),
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeItemListview()),
            ],
          );
  }
}
