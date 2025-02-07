import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/car_management/my_car_card/my_car_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'my_cars_model.dart';
export 'my_cars_model.dart';

class MyCarsWidget extends StatefulWidget {
  const MyCarsWidget({super.key});

  @override
  State<MyCarsWidget> createState() => _MyCarsWidgetState();
}

class _MyCarsWidgetState extends State<MyCarsWidget> {
  late MyCarsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyCarsModel());
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
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'My Cars',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Open Sans',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('AddCarStepsInfo');
                            },
                            text: 'Add New Car',
                            icon: const Icon(
                              Icons.add,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconAlignment: IconAlignment.start,
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0x00FFFFFF),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 215.5,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: StreamBuilder<List<CarRecord>>(
                        stream: queryCarRecord(
                          queryBuilder: (carRecord) => carRecord.where(
                            'car_owner',
                            isEqualTo: currentUserReference,
                          ),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<CarRecord> myCarsListViewCarRecordList =
                              snapshot.data!;

                          return ListView.separated(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            itemCount: myCarsListViewCarRecordList.length,
                            separatorBuilder: (_, __) => const SizedBox(width: 10.0),
                            itemBuilder: (context, myCarsListViewIndex) {
                              final myCarsListViewCarRecord =
                                  myCarsListViewCarRecordList[
                                      myCarsListViewIndex];
                              return wrapWithModel(
                                model: _model.myCarCardModels.getModel(
                                  myCarsListViewIndex.toString(),
                                  myCarsListViewIndex,
                                ),
                                updateCallback: () => safeSetState(() {}),
                                child: MyCarCardWidget(
                                  key: Key(
                                    'Key6dw_${myCarsListViewIndex.toString()}',
                                  ),
                                  carData: myCarsListViewCarRecord,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ].divide(const SizedBox(height: 10.0)),
                ),
              ].divide(const SizedBox(height: 30.0)),
            ),
          ),
        ),
      ),
    );
  }
}
