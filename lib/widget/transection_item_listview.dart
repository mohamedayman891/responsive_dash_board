import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transection_model.dart';
import 'package:responsive_dash_board/widget/transection_item.dart';

class TransectionItemListview extends StatelessWidget {
  const TransectionItemListview({super.key});
  static const item = [
    TransectionModel(
      title: "Cash Withdrawal",
      date: "13 Apr, 2022",
      amount: r"$20,129",
      isWithdrawer: true,
    ),
    TransectionModel(
      title: "Landing Page project",
      date: "13 Apr, 2022 at 3:30 PM",
      amount: r"$2,000",
      isWithdrawer: false,
    ),
    TransectionModel(
      title: "Juni Mobile App ",
      date: "13 Apr, 2022",
      amount: r"$20,187",
      isWithdrawer: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: item.map((e) => TransectionItem(transectionModel: e)).toList(),
    );
  }
}
