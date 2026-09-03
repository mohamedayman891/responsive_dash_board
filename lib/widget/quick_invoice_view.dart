import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/custom_background_container.dart';
import 'package:responsive_dash_board/widget/latest_transaction.dart';
import 'package:responsive_dash_board/widget/quick_invoice_form.dart';
import 'package:responsive_dash_board/widget/quick_invoice_header.dart';

class QuickInvoiceView extends StatelessWidget {
  const QuickInvoiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(height: 30, color: Color(0xffF1F1F1)),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
