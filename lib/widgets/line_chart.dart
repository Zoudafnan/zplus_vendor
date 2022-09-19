
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/colors.dart';

class Charts extends StatefulWidget {
  const Charts({Key? key}) : super(key: key);

  @override
  _ChartsState createState() => _ChartsState();
}

class _ChartsState extends State<Charts> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 2/2.1,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(5)
              ),
              border: Border.all(color: AppColor.shadow.withOpacity(0.2))
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 15,right: 15),
              child: LineChart(
                LineChartData(
                    maxX: 7,
                    minX: 0,
                    maxY: 8,
                    minY: 0,
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: AxisTitles(sideTitles:
                    SideTitles(
                        showTitles: true,
                        reservedSize: 30,
                        getTitlesWidget: bottomTitleWidgets
                    )),
                    leftTitles: AxisTitles(sideTitles:
                    SideTitles(
                        showTitles: true,
                        reservedSize: 30,
                        getTitlesWidget: leftTitleWidgets
                    )),
                    rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  ),
                  gridData: FlGridData(
                    show: true,
                    getDrawingHorizontalLine: (value){
                      return FlLine(
                        color: AppColor.textLight,
                        strokeWidth: 1 ,
                      );
                    },
                    drawVerticalLine: false,
                    getDrawingVerticalLine: (value){
                      return FlLine(
                        strokeWidth: 1
                      );
                    }
                  ),
                  borderData: FlBorderData(
                    show: true,
                      border: Border.all(color: AppColor.textLight)
                  ),
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 3),
                        FlSpot(1, 1),
                        FlSpot(2, 5),
                        FlSpot(3, 2),
                        FlSpot(4, 6),
                        FlSpot(5, 8),
                        FlSpot(6, 5),
                        FlSpot(7, 0),
                      ],
                      gradient: LinearGradient(colors: [
                        AppColor.shadow,
                        AppColor.primary
                      ]
                      ),
                      barWidth: 2,
                      dotData: FlDotData(
                        show: false,

                      ),
                      belowBarData: BarAreaData(
                        show: true,
                          gradient: LinearGradient(colors: [
                            AppColor.shadow.withOpacity(0.3),
                            AppColor.primary.withOpacity(0.3)
                          ]
                          )
                      )
                    )
                  ]
                )
              ),
            ),
          ),
        )
      ],
    );
  }
  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff68737d),
      fontWeight: FontWeight.bold,
      fontSize: 12,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = const Text('MON', style: style);
        break;
      case 2:
        text = const Text('TUE', style: style);
        break;
      case 3:
        text = const Text('WED', style: style);
        break;
      case 4:
        text = const Text('THU', style: style);
        break;
      case 5:
        text = const Text('FRI', style: style);
        break;
      case 6:
        text = const Text('SAT', style: style);
        break;
      case 7:
        text = const Text('SUN', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 6.0,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff67727d),
      fontWeight: FontWeight.bold,
      fontSize: 12,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '5';
        break;
      case 2:
        text = '10';
        break;
      case 3:
        text = '15';
        break;
      case 4:
        text = '20';
        break;
      case 5:
        text = '25';
        break;
      case 6:
        text = '30';
        break;
      case 7:
        text = '35';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.center);
  }


}


































//       body: LineChart(
//         LineChartData(
//           minX: 0,
//           minY: 0,
//           maxX: 7,
//           maxY: 10,
//           lineBarsData: [
//             LineChartBarData(
//               spots: [
//                 FlSpot(1, 3),
//                 FlSpot(2, 5),
//                 FlSpot(4, 6),
//                 FlSpot(6, 3),
//                 FlSpot(7, 8),
//               ]
//             )
//           ]
//         )
//           ),
//     );
//   }
// }
