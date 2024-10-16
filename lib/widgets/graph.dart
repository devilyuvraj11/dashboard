import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class graph extends StatelessWidget{


  @override
  Widget build(BuildContext context) {


  return Scaffold(
    body: Container(
      height: 300,
      width: 500,
      padding: const EdgeInsets.all(16.0),
      child: LineChart(
        LineChartData(
          gridData: gridData,
          titlesData: titleData,
          borderData: boarderData,
          lineBarsData: linerBarsData,
          minY: 0,
          maxY: 50,
          minX: 2015,
          maxX: 2020,
          extraLinesData: ExtraLinesData(
            horizontalLines: [
              HorizontalLine(y: 55,
                color: Colors.purpleAccent,
                strokeWidth: 2,
                dashArray: [10, 5]
              )
            ]
          )
        )
      ),
    ),
  );}


List<LineChartBarData> get linerBarsData => [
  lineChartBarData1, lineChartBarData2
];


FlTitlesData get titleData => FlTitlesData(
  bottomTitles: AxisTitles(
    sideTitles: bottomTitles,
  ),
  rightTitles: const AxisTitles(
    sideTitles: SideTitles(showTitles: false),
  ),
  topTitles: const AxisTitles(
    sideTitles: SideTitles(showTitles: false)
  ),
  leftTitles: AxisTitles(
    sideTitles: leftTitles()
  )
);


Widget leftTitlesWidget(double value, TitleMeta meta){
  const style = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.deepPurpleAccent,
  );
  Widget text;
  switch(value.toInt()){
    case 0:
      text = const Text("0", style: style, textAlign: TextAlign.center,);
      break;
    case 10:
      text = const Text("10", style: style, textAlign: TextAlign.center,);
      break;
    case 20:
      text = const Text("20", style: style, textAlign: TextAlign.center,);
      break;
    case 30:
      text = const Text("30", style: style, textAlign: TextAlign.center,);
      break;
    case 40:
      text = const Text("40", style: style, textAlign: TextAlign.center,);
      break;
    case 50:
      text = const Text("50", style: style, textAlign: TextAlign.center,);;
      break;
    default:
      text = const Text("", style: style, textAlign: TextAlign.center,);
  }
  return text;
}

SideTitles leftTitles() => SideTitles(
  getTitlesWidget: leftTitlesWidget,
  showTitles: true,
  interval: 10,
  reservedSize: 40
);

Widget bottomTitleWidgets(double value, TitleMeta meta){
  const style = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.deepPurpleAccent
  );
  Widget text;
  switch(value.toInt()){
    case 2015:
      text = const Text('2015', style: style,);
      break;
    case 2016:
      text = const Text('2016', style: style,);
      break;
    case 2017:
      text = const Text('2017', style: style,);
      break;
    case 2018:
      text = const Text('2018', style: style,);
      break;
    case 2019:
      text = const Text('2019', style: style,);
      break;
    case 2020:
      text = const Text('2020', style: style,);
      break;
    default:
      text = const Text('', style: style,);
  }
  return SideTitleWidget(child: text, axisSide: meta.axisSide, space: 10,);
}

SideTitles get bottomTitles => SideTitles(
  showTitles: true,
  reservedSize: 32,
  getTitlesWidget: bottomTitleWidgets,
);

FlGridData get gridData => const FlGridData(show: true);

FlBorderData get boarderData => FlBorderData(
    show: true,
    border: const Border(
    bottom: BorderSide(
      color: Colors.deepPurpleAccent, width: 4
    ),
      left: BorderSide(color: Colors.deepPurpleAccent,),
  )
);

LineChartBarData get lineChartBarData1 => LineChartBarData(
  isCurved: true,
  color: Colors.deepOrange,
  barWidth: 4,
  dotData: const FlDotData(show: true),
  belowBarData: BarAreaData(
    show: false
  ),
  spots: const[
    FlSpot(2015, 30),
    FlSpot(2016, 20),
    FlSpot(2017, 20),
    FlSpot(2018, 40),
    FlSpot(2019, 20),
    FlSpot(2020, 30)
  ]
);

LineChartBarData get lineChartBarData2 => LineChartBarData(
    isCurved: true,
    color: Colors.deepPurpleAccent,
    barWidth: 4,
    dotData: const FlDotData(show: true),
    belowBarData: BarAreaData(
        show: false
    ),
    spots: const[
      FlSpot(2015, 20),
      FlSpot(2016, 15),
      FlSpot(2017, 20),
      FlSpot(2018, 30),
      FlSpot(2019, 15),
      FlSpot(2020, 30)
    ]
);}