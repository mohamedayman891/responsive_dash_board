import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transection_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransectionItem extends StatelessWidget {
  const TransectionItem({super.key, required this.transectionModel});
  final TransectionModel transectionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transectionModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transectionModel.date,
          style: AppStyles.styleRegular16(
            context,
          ).copyWith(color: Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transectionModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transectionModel.isWithdrawer
                ? Color(0xffF3735E)
                : Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
