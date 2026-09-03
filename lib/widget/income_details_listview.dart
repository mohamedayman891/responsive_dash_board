import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_item_model.dart';
import 'package:responsive_dash_board/widget/income_details.dart';

class IncomeDetailsListview extends StatelessWidget {
  const IncomeDetailsListview({super.key});
  static const items = [
    IncomeItemModel(
      color: Color(0xff208CC8),
      title: "service", //"Design service"
      value: "40%",
    ),
    IncomeItemModel(
      color: Color(0xff4EB7F2),
      title: "product ", //"Design product"
      value: "25%",
    ),
    IncomeItemModel(
      color: Color(0xff064061),
      title: "royalti", //"Product royalti"
      value: "20%",
    ),
    IncomeItemModel(color: Color(0xffE2DECD), title: "Other", value: "15%"),
  ];
  @override
  Widget build(BuildContext context) {
    // log(MediaQuery.sizeOf(context).width.toString());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => IncomeDetails(incomeItemModel: e)).toList(),
    );
  }
}
