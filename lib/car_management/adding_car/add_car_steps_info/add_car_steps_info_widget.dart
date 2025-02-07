import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'add_car_steps_info_model.dart';
export 'add_car_steps_info_model.dart';

class AddCarStepsInfoWidget extends StatefulWidget {
  const AddCarStepsInfoWidget({super.key});

  @override
  State<AddCarStepsInfoWidget> createState() => _AddCarStepsInfoWidgetState();
}

class _AddCarStepsInfoWidgetState extends State<AddCarStepsInfoWidget> {
  late AddCarStepsInfoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddCarStepsInfoModel());
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
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.close,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Add Car to Application',
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Open Sans',
                                letterSpacing: 0.0,
                              ),
                    ),
                    Text(
                      'Here few steps to add new car into application to be available for rent.',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Open Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 416.4,
                  decoration: const BoxDecoration(
                    color: Color(0x193961F1),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/Screenshot_2025-02-03_111236.png',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 200.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('NewCar_info');
                      },
                      text: 'Contain ',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 42.7,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Open Sans',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
