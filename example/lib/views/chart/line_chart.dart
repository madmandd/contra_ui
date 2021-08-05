import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartView extends StatefulWidget {
  const LineChartView({Key? key}) : super(key: key);

  @override
  _LineChartViewState createState() => _LineChartViewState();
}

class _LineChartViewState extends State<LineChartView> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
    const Color(0xffFFD465),
    const Color(0xfffcd465),
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 1.20,
          child: Container(
            margin: EdgeInsets.only(top: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(18.0)),
              color: white,
            ),
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: LineChart(
                showAvg ? avgData() : mainData(),
              ),
            ),
          ),
        ),
        Positioned(
          left: 15,
          top: 50,
          child: SizedBox(
            width: 60,
            height: 34,
            child: TextButton(
              child: Text(
                'AVG',
                style: TextStyle(
                  fontSize: 12,
                  color: showAvg ? Colors.black.withOpacity(0.5) : black,
                ),
              ),
              onPressed: () {
                setState(() {
                  showAvg = !showAvg;
                });
              },
            ),
          ),
        ),
      ],
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 16),
          reservedSize: 22,
          margin: 8.0,
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return 'FEB';
              case 3:
                return 'MAR';
              case 6:
                return 'JUN';
              case 9:
                return 'SEP';
              case 12:
                return 'DEC';
            }
            return '';
          },
        ),
        leftTitles: SideTitles(
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          showTitles: true,
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: false,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 12,
      minY: 0,
      maxY: 50,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0.4, 20),
            FlSpot(1, 10),
            FlSpot(2.6, 2),
            FlSpot(4.9, 15),
            FlSpot(7.4, 35),
            FlSpot(8, 10),
            FlSpot(9.5, 40),
            FlSpot(11, 43),
            FlSpot(11.5, 0),
            FlSpot(12, 0),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors:
                gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) => const TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return 'FEB';
              case 3:
                return 'MAR';
              case 6:
                return 'JUN';
              case 9:
                return 'SEP';
              case 12:
                return 'DEC';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 12,
      minY: 0,
      maxY: 50,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 03),
            FlSpot(2.6, 39),
            FlSpot(4.9, 13),
            FlSpot(6.8, 29),
            FlSpot(8, 5),
            FlSpot(9.5, 19),
            FlSpot(11, 50),
          ],
          isCurved: true,
          colors: [
            const Color(0xff23b6e6),
            const Color(0xff02d39a),
            const Color(0xffFFD465),
            const Color(0xfffcd465),
          ],
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(show: true, colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)!
                .withOpacity(0.1),
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)!
                .withOpacity(0.1),
          ]),
        ),
      ],
    );
  }
}
