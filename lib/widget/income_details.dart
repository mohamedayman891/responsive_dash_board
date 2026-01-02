import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key, required this.incomeItemModel});
  final IncomeItemModel incomeItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      //contentPadding: EdgeInsets.zero,
      horizontalTitleGap: 3,
      leading: Container(
        height: 10,
        width: 10,
        decoration: ShapeDecoration(
          color: incomeItemModel.color,
          shape: OvalBorder(),
        ),
      ),
      title: Text(
        incomeItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeItemModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
