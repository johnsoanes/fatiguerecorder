import '../auth/firebase_user_provider.dart';
import '../flutter_flow/flutter_flow_charts.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../login/login_widget.dart';
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class FatigueGraphWidget extends StatefulWidget {
  const FatigueGraphWidget({Key key}) : super(key: key);

  @override
  _FatigueGraphWidgetState createState() => _FatigueGraphWidgetState();
}

class _FatigueGraphWidgetState extends State<FatigueGraphWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (loggedIn) {
        return;
      }

      await Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.fade,
          duration: Duration(milliseconds: 0),
          reverseDuration: Duration(milliseconds: 0),
          child: LoginWidget(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF7E2B69),
        automaticallyImplyLeading: false,
        title: Text(
          'Energy Graph',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Container(
          width: 300,
          height: 300,
          child: FlutterFlowLineChart(
            data: [
              FFLineChartData(
                xData: List.generate(random_data.randomInteger(0, 0),
                    (index) => random_data.randomInteger(0, 0)),
                yData: List.generate(random_data.randomInteger(0, 0),
                    (index) => random_data.randomDouble(0, 0)),
                settings: LineChartBarData(
                  color: Color(0xFFD354E3),
                  barWidth: 1,
                  isCurved: true,
                  dotData: FlDotData(show: false),
                ),
              )
            ],
            backgroundColor: Colors.white,
            axisBounds: AxisBounds(),
            xAxisLabelInfo: AxisLabelInfo(),
            yAxisLabelInfo: AxisLabelInfo(),
          ),
        ),
      ),
    );
  }
}
