import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPageIndex});
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: buildDot(isActive: index == currentPageIndex),
        ),
      ),
    );
  }

  buildDot({required bool isActive}) => AnimatedContainer(
    duration: Duration(milliseconds: 500),
    width: isActive ? 32 : 8,
    height: 8,
    decoration: ShapeDecoration(
      color: isActive ? Color(0xff4EB7F2) : Color(0xffE8E8E8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}
