import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widget/transection_header.dart';
import 'package:responsive_dash_board/widget/transection_item_listview.dart';

class TransectionHistoryView extends StatelessWidget {
  const TransectionHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransectionHeader(),
        SizedBox(height: 2),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "13 April 2022",
            style: AppStyles.styleMedium16(
              context,
            ).copyWith(color: Color(0xffAAAAAA)),
          ),
        ),
        SizedBox(height: 3),
        TransectionItemListview(),
      ],
    );
  }
}
