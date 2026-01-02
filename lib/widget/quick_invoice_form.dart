import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/custom_button.dart';
import 'package:responsive_dash_board/widget/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                text: "Customer name",
                hint: "Type customer name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                text: "Customer email",
                hint: "Type customer email",
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                text: "Item name",
                hint: "Type customer name",
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: TitleTextField(text: "Item mount", hint: "USD"),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: "Add more details",
                backgroundColor: Color(0xffFFFFFF),
                textColor: Color(0xff4DB7F2),
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: CustomButton(
                text: "Send Money",
                backgroundColor: Color(0xff4DB7F2),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
