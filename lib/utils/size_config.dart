import 'package:flutter/widgets.dart';

class SizeConfig {
  static const double desktopLayout = 1200;
  static const double tabletLayout = 800;
  // psssible used or not
  static late double width, height;
  static init(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }
}
