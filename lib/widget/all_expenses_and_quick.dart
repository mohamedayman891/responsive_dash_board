import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/all_expenses.dart';
import 'package:responsive_dash_board/widget/quick_invoice.dart';

class AllExpensesAndQuickInvoice extends StatelessWidget {
  const AllExpensesAndQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(height: 40),
        AllExpenses(),
        SizedBox(height: 16),
        QuickInvoice(),
      ],
    );
  }
}
