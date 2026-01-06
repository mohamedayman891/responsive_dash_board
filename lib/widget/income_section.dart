import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/custom_background_container.dart';
import 'package:responsive_dash_board/widget/income_header.dart';
import 'package:responsive_dash_board/widget/income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: SingleChildScrollView(
        child: Column(children: [IncomeHeader(), IncomeSectionBody()]),
      ),
    );
  }
}
