import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int actineIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          actineIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: actineIndex == 0 ? 1.5 : null,
          title: actineIndex == 0 ? "Design services" : "40%",
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: actineIndex == 0 ? null : Colors.white),
          value: 40,
          color: Color(0xff208CC8),
          radius: actineIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: actineIndex == 1 ? 2.1 : null,
          title: actineIndex == 1 ? "Design product" : "25%",
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: actineIndex == 1 ? null : Colors.white),
          value: 25,
          color: Color(0xff4EB7F2),
          radius: actineIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: actineIndex == 2 ? 1.3 : null,
          title: actineIndex == 2 ? "Product royalti" : "20%",
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: actineIndex == 2 ? null : Colors.white),
          value: 20,
          color: Color(0xff064061),
          radius: actineIndex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: actineIndex == 3 ? 1.5 : null,
          title: actineIndex == 3 ? "Other" : "22%",
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: actineIndex == 3 ? null : Colors.white),
          value: 22,
          color: Color(0xffE2DECD),
          radius: actineIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
