import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/custom_background_container.dart';
import 'package:responsive_dash_board/widget/my_card_section.dart';
import 'package:responsive_dash_board/widget/transection_history.dart';

class MyCardAndTransectionHistory extends StatelessWidget {
  const MyCardAndTransectionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(height: 15, color: Color(0xffF1F1F1)),
          TransectionHistory(),
        ],
      ),
    );
  }
}
