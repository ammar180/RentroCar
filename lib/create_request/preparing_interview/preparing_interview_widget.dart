import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'preparing_interview_model.dart';
export 'preparing_interview_model.dart';

class PreparingInterviewWidget extends StatefulWidget {
  const PreparingInterviewWidget({super.key});

  @override
  State<PreparingInterviewWidget> createState() =>
      _PreparingInterviewWidgetState();
}

class _PreparingInterviewWidgetState extends State<PreparingInterviewWidget>
    with RouteAware {
  late PreparingInterviewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PreparingInterviewModel());
  }

  @override
  void dispose() {
    _model.dispose();

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

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/rentrocar-logo.jpg',
                        width: 40.0,
                        height: 40.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'm1twnkew' /* RentroCar */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Roboto Mono',
                                letterSpacing: 0.0,
                              ),
                    ),
                  ].divide(SizedBox(width: 10.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '3qa1rshn' /* Important Nots for preparing c... */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Open Sans',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'isbj3gcq' /* Borrowing Agreement Contract: */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Open Sans',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        FlutterFlowPdfViewer(
                          assetPath: 'assets/pdfs/Borrowing_Agreement.pdf',
                          height: 426.72,
                          horizontalScroll: false,
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            await downloadFile(
                              filename: 'Borrowing Agreement-contract.pdf',
                              url:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/rentro-car-74c8w5/assets/3byf3wcsjk1s/Borrowing_Agreement.pdf',
                            );
                          },
                          text: FFLocalizations.of(context).getText(
                            'tu2wic38' /* Download contract */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ]
                          .divide(SizedBox(height: 5.0))
                          .addToStart(SizedBox(height: 10.0)),
                    ),
                  ],
                ),
              ].divide(SizedBox(height: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
