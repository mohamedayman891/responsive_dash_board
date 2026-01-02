import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widget/latest_transction_listview.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("Latest Transaction", style: AppStyles.styleMedium16(context)),
          ],
        ),
        SizedBox(height: 10),
        LatestTransactionListView(),
      ],
    );
  }
}
