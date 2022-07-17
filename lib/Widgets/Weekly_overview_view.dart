import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class weeklyOverview_view extends StatefulWidget {
  const weeklyOverview_view({Key,key}) : super(key: key);

  @override
  _weeklyOverview_viewState createState() => _weeklyOverview_viewState();
}

class _weeklyOverview_viewState extends State<weeklyOverview_view> {
  List<ChartSampleData > chartData = <ChartSampleData>[
    ChartSampleData(x: '2012', y: 1200,color:  Color(0xff0B3B8F)),
    ChartSampleData(x: '2014', y: 1400,color:  Color(0xff0B3B8F)),
    ChartSampleData(x: '2016', y: 1700,color:   Color(0xff0B3B8F)),
    ChartSampleData(x: '2018', y: 1800,color:   Color(0xff0B3B8F)),
    ChartSampleData(x: '2020', y: 1400,color:  Colors.black),
    ChartSampleData(x: '2022', y: 2000,color:  Colors.black),

  ];
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw=MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 150,
        // padding: EdgeInsets.all(10),
        child:SfCartesianChart(
          plotAreaBorderWidth: 0,



          primaryXAxis: CategoryAxis(labelStyle:GoogleFonts.inter(color: Colors.black,fontSize: 12),
              opposedPosition: false,
              majorGridLines: const MajorGridLines(width: 0)



          ),
          primaryYAxis: CategoryAxis(labelStyle:GoogleFonts.inter(color: Colors.black,fontSize: 12),
            opposedPosition: true,
              majorGridLines: const MajorGridLines(width: 0)



          ),

          series: <ColumnSeries<ChartSampleData, String>>[
            ColumnSeries<ChartSampleData, String>(
              // borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
              pointColorMapper:  (ChartSampleData sales, _) => sales.color,

              width:-0.7,
              // Binding the chartData to the dataSource of the column series.
              dataSource: chartData,
              xValueMapper: (ChartSampleData sales, _) => sales.x,
              yValueMapper: (ChartSampleData sales, _) => sales.y,
            ),
          ],
        ),
        ),
    );
  }
}
class ChartSampleData {
  ChartSampleData({this.x, this.y,this.color});
  var color;
  final String? x;
  final double? y;
}