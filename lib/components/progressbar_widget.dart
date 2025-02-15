import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'progressbar_model.dart';
export 'progressbar_model.dart';

class ProgressbarWidget extends StatefulWidget {
  const ProgressbarWidget({super.key});

  @override
  State<ProgressbarWidget> createState() => _ProgressbarWidgetState();
}

class _ProgressbarWidgetState extends State<ProgressbarWidget> with RouteAware {
  late ProgressbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgressbarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final route = DebugModalRoute.of(context);
    if (route != null) {
      routeObserver.subscribe(this, route);
    }
    debugLogGlobalProperty(context);
  }

  @override
  void didPopNext() {
    if (mounted && DebugFlutterFlowModelContext.maybeOf(context) == null) {
      setState(() => _model.isRouteVisible = true);
      debugLogWidgetClass(_model);
    }
  }

  @override
  void didPush() {
    if (mounted && DebugFlutterFlowModelContext.maybeOf(context) == null) {
      setState(() => _model.isRouteVisible = true);
      debugLogWidgetClass(_model);
    }
  }

  @override
  void didPop() {
    _model.isRouteVisible = false;
  }

  @override
  void didPushNext() {
    _model.isRouteVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    DebugFlutterFlowModelContext.maybeOf(context)
        ?.parentModelCallback
        ?.call(_model);

    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: CircularPercentIndicator(
          percent: 0.5,
          radius: 60.0,
          lineWidth: 12.0,
          animation: true,
          animateFromLastPercent: true,
          progressColor: FlutterFlowTheme.of(context).primary,
          backgroundColor: FlutterFlowTheme.of(context).accent4,
          center: Text(
            FFLocalizations.of(context).getText(
              '3uuwhd0m' /* 50% */,
            ),
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  fontFamily: 'Open Sans',
                  letterSpacing: 0.0,
                ),
          ),
        ),
      ),
    );
  }
}
