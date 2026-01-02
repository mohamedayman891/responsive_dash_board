import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/all_expenses_and_quick.dart';
import 'package:responsive_dash_board/widget/custom_drawer.dart';
import 'package:responsive_dash_board/widget/income_section.dart';
import 'package:responsive_dash_board/widget/my_card_and_transection_history.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 24),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AllExpensesAndQuickInvoice(),
                SizedBox(height: 20),
                MyCardAndTransectionHistory(),
                SizedBox(height: 20),
                IncomeSection(),
              ],
            ),
          ),
        ),
        SizedBox(width: 24),
      ],
    );
  }
}
