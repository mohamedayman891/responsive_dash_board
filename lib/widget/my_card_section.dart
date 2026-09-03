import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widget/dots_indicator.dart';
import 'package:responsive_dash_board/widget/my_card_pageview.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 420,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("MyCard", style: AppStyles.styleSemiBold20(context)),
            ],
          ),
        ),
        SizedBox(height: 3),
        MyCardPageview(pageController: pageController),
        SizedBox(height: 5),
        DotsIndicator(currentPageIndex: currentPageIndex),
      ],
    );
  }
}
