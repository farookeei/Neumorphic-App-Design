import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        color: Colors.white,
        child: Container(
            padding: EdgeInsets.only(top: 12),
            width: double.infinity,
            child: LineChartWidget()),
      );
}

class LineChartWidget extends StatelessWidget {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
          minX: 0,
          maxX: 25,
          minY: 0,
          maxY: 6,
          titlesData: LineTitles.getTitleData(),
          gridData: FlGridData(
            show: false, //* horizontal grid
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1,
              );
            },
            drawVerticalLine: false, //*vertical grid
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d), //* the grid color
                strokeWidth: 1,
              );
            },
          ),
          borderData: FlBorderData(
            show: false, //* border lines
            border: Border.all(color: const Color(0xff37434d), width: 1),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 3),
                FlSpot(2.6, 2),
                FlSpot(4.9, 5),
                FlSpot(6.8, 2.5),
                FlSpot(8, 4),
                FlSpot(9.5, 3),
                FlSpot(11, 4),
              ],
              isCurved: false,
              colors: [Color.fromRGBO(0, 69, 173, 1)],
              barWidth: 1,
              // dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                colors: gradientColors
                    .map((color) => color.withOpacity(1))
                    .toList(),
              ),
            ),
          ],
        ),
      );
}

class LineTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 35,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff68737d),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'MON';
              case 5:
                return 'TUE';
              case 8:
                return 'WED';
              case 11:
                return 'THUR';
              case 14:
                return 'FRI';
              case 17:
                return 'SAT';
              case 20:
                return 'SUN';
            }
            return '';
          },
          margin: 8,
        ),
        // leftTitles: SideTitles(
        //   showTitles: true,
        //   getTextStyles: (value) => const TextStyle(
        //     color: Color(0xff67727d),
        //     fontWeight: FontWeight.bold,
        //     fontSize: 15,
        //   ),
        //   getTitles: (value) {
        //     switch (value.toInt()) {
        //       case 1:
        //         return '10k';
        //       case 3:
        //         return '30k';
        //       case 5:
        //         return '50k';
        //     }
        //     return '';
        //   },
        //   reservedSize: 35,
        //   margin: 12,
        // ),
      );
}
