import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/car_management/borrowed_car_card/borrowed_car_card_widget.dart';
import '/car_management/componants/my_car_card/my_car_card_widget.dart';
import '/components/alert_dialog_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'my_cars_model.dart';
export 'my_cars_model.dart';

/// Name: My Orders
/// Description:
/// This page displays a list of ongoing and upcoming car rental orders.
///
/// Users can view details such as the car model, rental due date, and contact
/// information of the assigned person. The interface includes filters to
/// toggle between ongoing and upcoming orders within the next five days.
///
/// UI Structure:
/// AppBar (Top Navigation)
///
/// Left-aligned title: "My Orders" in bold.
/// Right-aligned "View All" button (small font).
/// Filter Tabs
///
/// Two pill-shaped filter buttons:
/// "On Going" (active state with blue background).
/// "Next 5 Days" (inactive state with light gray background).
/// Order List (Card-Based UI)
///
/// Each order is a rounded card with a shadow effect.
/// Car Image (rounded thumbnail on the left).
/// Car Model Name (bold title).
/// Due Date (gray text below the car name).
/// User Information Section:
/// Profile Icon & Name ("Chris").
/// Phone Icon & Contact Number ("+1202-555-0877").
/// Order Status Badge (Right-Aligned)
/// "In Use" (Green badge).
/// "Completed" (Blue badge).
/// Scrollable List
///
/// Additional orders appear below in a scrollable list format.
/// Consistent spacing between order cards.
/// Styling & Design Preferences:
/// Minimalist UI with rounded cards and shadows.
/// Blue and gray color scheme for active/inactive filters.
/// Consistent spacing between UI elements.
/// Soft gradient badges for order status (e.g., green for active, blue for
/// completed).
/// Mobile-friendly and responsive layout.
class MyCarsWidget extends StatefulWidget {
  const MyCarsWidget({super.key});

  @override
  State<MyCarsWidget> createState() => _MyCarsWidgetState();
}

class _MyCarsWidgetState extends State<MyCarsWidget> with RouteAware {
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
    _model.myCarCardModels.clear();
    _model.borrowedCarCardModels.clear();

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
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'mjt2l9ta' /* My Cars */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Open Sans',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Builder(
                            builder: (context) => FFButtonWidget(
                              onPressed: () async {
                                if (valueOrDefault<bool>(
                                    currentUserDocument?.isVerified, false)) {
                                  context.pushNamed('AddingNewCarPage');
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: WebViewAware(
                                          child: GestureDetector(
                                            onTap: () {
                                              FocusScope.of(dialogContext)
                                                  .unfocus();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                            child: AlertDialogWidget(
                                              title: 'Worning',
                                              description:
                                                  'Please verify your self first and Try to add car again',
                                              confirmButton:
                                                  'Go To verfication',
                                              confirmCallback: () async {},
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(
                                      () => _model.dialogResult = value));

                                  if (_model.dialogResult!) {
                                    context.pushNamed('profile');
                                  }
                                }

                                safeSetState(() {});
                              },
                              text: FFLocalizations.of(context).getText(
                                'h7qr7io9' /* Add New Car */,
                              ),
                              icon: Icon(
                                Icons.add,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0x00FFFFFF),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    StreamBuilder<List<CarRecord>>(
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
                        List<CarRecord> myCarsContainerCarRecordList =
                            snapshot.data!;

                        _model.debugBackendQueries[
                                'myCarsContainerCarRecordList_Container_pnnrjanj${myCarsContainerCarRecordList.length > 100 ? ' (first 100)' : ''}'] =
                            debugSerializeParam(
                          myCarsContainerCarRecordList.take(100),
                          ParamType.Document,
                          isList: true,
                          link:
                              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=MyCars',
                          name: 'car',
                          nullable: false,
                        );
                        debugLogWidgetClass(_model);

                        return Container(
                          height: 300.5,
                          decoration: BoxDecoration(),
                          child: Builder(
                            builder: (context) {
                              if (myCarsContainerCarRecordList.isNotEmpty) {
                                return Builder(
                                  builder: (context) {
                                    final myCarVar =
                                        myCarsContainerCarRecordList.toList();
                                    _model.debugGeneratorVariables[
                                            'myCarVar${myCarVar.length > 100 ? ' (first 100)' : ''}'] =
                                        debugSerializeParam(
                                      myCarVar.take(100),
                                      ParamType.Document,
                                      isList: true,
                                      link:
                                          'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=MyCars',
                                      name: 'car',
                                      nullable: false,
                                    );
                                    debugLogWidgetClass(_model);

                                    return ListView.separated(
                                      padding: EdgeInsets.zero,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: myCarVar.length,
                                      separatorBuilder: (_, __) =>
                                          SizedBox(width: 10.0),
                                      itemBuilder: (context, myCarVarIndex) {
                                        final myCarVarItem =
                                            myCarVar[myCarVarIndex];
                                        return Builder(builder: (_) {
                                          return DebugFlutterFlowModelContext(
                                            rootModel: _model.rootModel,
                                            parentModelCallback: (m) {
                                              _model.myCarCardModels[
                                                  'Keyxfy_${myCarVarIndex}_of_${myCarVar.length}'] = m;
                                            },
                                            child: MyCarCardWidget(
                                              key: Key(
                                                  'Keyxfy_${myCarVarIndex}_of_${myCarVar.length}'),
                                              carData: myCarVarItem,
                                            ),
                                          );
                                        });
                                      },
                                    );
                                  },
                                );
                              } else {
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'p4iihd1h' /* You Didn't upload any Car yet! */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Open Sans',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                );
                              }
                            },
                          ),
                        );
                      },
                    ),
                  ].divide(SizedBox(height: 10.0)),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'g7ftohom' /* Current Borrowed Cars */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Open Sans',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('home');
                            },
                            text: FFLocalizations.of(context).getText(
                              'nuyisxph' /* Rent Now! */,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconAlignment: IconAlignment.start,
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0x00FFFFFF),
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
                      StreamBuilder<List<TripRecord>>(
                        stream: queryTripRecord(
                          queryBuilder: (tripRecord) =>
                              tripRecord.where(Filter.or(
                            Filter(
                              'carBorrower',
                              isEqualTo: currentUserReference,
                            ),
                            Filter(
                              'carOwner',
                              isEqualTo: currentUserReference,
                            ),
                          )),
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
                          List<TripRecord> containerTripRecordList =
                              snapshot.data!;

                          _model.debugBackendQueries[
                                  'containerTripRecordList_Container_rvk3j6vw${containerTripRecordList.length > 100 ? ' (first 100)' : ''}'] =
                              debugSerializeParam(
                            containerTripRecordList.take(100),
                            ParamType.Document,
                            isList: true,
                            link:
                                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=MyCars',
                            name: 'trip',
                            nullable: false,
                          );
                          debugLogWidgetClass(_model);

                          return Container(
                            width: double.infinity,
                            height: MediaQuery.sizeOf(context).height * 0.457,
                            decoration: BoxDecoration(),
                            child: Builder(
                              builder: (context) {
                                if (containerTripRecordList.isNotEmpty) {
                                  return Builder(
                                    builder: (context) {
                                      final containerVar =
                                          containerTripRecordList
                                              .where((e) =>
                                                  e.status !=
                                                  Status.notConfirmed)
                                              .toList();
                                      _model.debugGeneratorVariables[
                                              'containerVar${containerVar.length > 100 ? ' (first 100)' : ''}'] =
                                          debugSerializeParam(
                                        containerVar.take(100),
                                        ParamType.Document,
                                        isList: true,
                                        link:
                                            'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=MyCars',
                                        name: 'trip',
                                        nullable: false,
                                      );
                                      debugLogWidgetClass(_model);

                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: containerVar.length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(height: 10.0),
                                        itemBuilder:
                                            (context, containerVarIndex) {
                                          final containerVarItem =
                                              containerVar[containerVarIndex];
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (containerVarItem.carOwner ==
                                                  currentUserReference) {
                                                context.pushNamed(
                                                  'ownerBookingSammary',
                                                  queryParameters: {
                                                    'tripDocument':
                                                        serializeParam(
                                                      containerVarItem,
                                                      ParamType.Document,
                                                    ),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    'tripDocument':
                                                        containerVarItem,
                                                  },
                                                );
                                              } else {
                                                context.pushNamed(
                                                  'booking_summary',
                                                  queryParameters: {
                                                    'tripDocument':
                                                        serializeParam(
                                                      containerVarItem,
                                                      ParamType.Document,
                                                    ),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    'tripDocument':
                                                        containerVarItem,
                                                  },
                                                );
                                              }

                                              await containerVarItem
                                                  .borrowedCar!
                                                  .update(createCarRecordData(
                                                availableDate:
                                                    getCurrentTimestamp >=
                                                            containerVarItem
                                                                .endDate!
                                                        ? null
                                                        : containerVarItem
                                                            .endDate,
                                                isAvailable:
                                                    getCurrentTimestamp >=
                                                        containerVarItem
                                                            .endDate!,
                                              ));
                                            },
                                            child: Builder(builder: (_) {
                                              return DebugFlutterFlowModelContext(
                                                rootModel: _model.rootModel,
                                                parentModelCallback: (m) {
                                                  _model.borrowedCarCardModels[
                                                      'Keyrja_${containerVarIndex}_of_${containerVar.length}'] = m;
                                                },
                                                child: BorrowedCarCardWidget(
                                                  key: Key(
                                                      'Keyrja_${containerVarIndex}_of_${containerVar.length}'),
                                                  tribData: containerVarItem,
                                                ),
                                              );
                                            }),
                                          );
                                        },
                                      );
                                    },
                                  );
                                } else {
                                  return Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'edtunmde' /* You didn't have any requestes */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Open Sans',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  );
                                }
                              },
                            ),
                          );
                        },
                      ),
                    ].divide(SizedBox(height: 10.0)),
                  ),
                ),
              ].divide(SizedBox(height: 30.0)),
            ),
          ),
        ),
      ),
    );
  }
}
