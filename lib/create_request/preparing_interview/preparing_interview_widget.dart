import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'preparing_interview_model.dart';
export 'preparing_interview_model.dart';

class PreparingInterviewWidget extends StatefulWidget {
  const PreparingInterviewWidget({super.key});

  @override
  State<PreparingInterviewWidget> createState() =>
      _PreparingInterviewWidgetState();
}

class _PreparingInterviewWidgetState extends State<PreparingInterviewWidget> {
  late PreparingInterviewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PreparingInterviewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: true,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/rentrocar-log.png',
                  width: 40.0,
                  height: 40.0,
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                FFLocalizations.of(context).getText(
                  'm1twnkew' /* RentroCar */,
                ),
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Roboto Mono',
                      letterSpacing: 0.0,
                    ),
              ),
            ].divide(SizedBox(width: 10.0)),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
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
                          assetPath: 'assets/pdfs/spnzn__.pdf',
                          height: 426.72,
                          horizontalScroll: false,
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            await downloadFile(
                              filename: 'Borrowing Agreement-contract-15/2.pdf',
                              url:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/rentro-car-74c8w5/assets/6ygjj8ommk59/%D8%A7%D8%AA%D9%81%D8%A7%D9%82%D9%8A%D8%A9_%D8%A7%D9%84%D8%A7%D9%82%D8%AA%D8%B1%D8%A7%D8%B6.pdf',
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
