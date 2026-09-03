import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/views/adaptive_layout_view.dart';
import 'package:responsive_dash_board/widget/dash_board_mobile_layout.dart';
import 'package:responsive_dash_board/widget/dash_board_tablet_layout.dart';
import 'package:responsive_dash_board/widget/dash_board_desktop_layout.dart';
import 'package:responsive_dash_board/widget/drawer_view.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tabletLayout
          ? AppBar(
              elevation: 0,
              backgroundColor: Color(0XFFF7F9FA),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tabletLayout
          ? DrawerView()
          : null,
      backgroundColor: Color(0XFFF7F9FA),
      body: AdaptiveLayoutView(
        mobileLayout: (context) => DashBoardMobileLayout(),
        tabletLayout: (context) => DashBoardTabletLayout(),
        desktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
