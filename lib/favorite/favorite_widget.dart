import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/car_card/car_card_widget.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'favorite_model.dart';
export 'favorite_model.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> with RouteAware {
  late FavoriteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavoriteModel());
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
    _model.carCardModels.clear();

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
                        'assets/images/rentrocar-log.png',
                        width: 40.0,
                        height: 40.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        '5sw10eas' /* RentroCar */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Roboto Mono',
                                letterSpacing: 0.0,
                              ),
                    ),
                  ].divide(SizedBox(width: 10.0)),
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 0.655,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'b9fv5ldt' /* Your Favorite Cars */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Open Sans',
                              letterSpacing: 0.0,
                            ),
                      ),
                      Flexible(
                        child: Builder(
                          builder: (context) {
                            if ((currentUserDocument?.lovedCars?.toList() ?? [])
                                .isNotEmpty) {
                              return Builder(
                                builder: (context) {
                                  final lovedCarRef = (currentUserDocument
                                              ?.lovedCars
                                              ?.toList() ??
                                          [])
                                      .toList();
                                  _model.debugGeneratorVariables[
                                          'lovedCarRef${lovedCarRef.length > 100 ? ' (first 100)' : ''}'] =
                                      debugSerializeParam(
                                    lovedCarRef.take(100),
                                    ParamType.DocumentReference,
                                    isList: true,
                                    link:
                                        'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=Favorite',
                                    name: 'car',
                                    nullable: false,
                                  );
                                  debugLogWidgetClass(_model);

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: lovedCarRef.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 10.0),
                                    itemBuilder: (context, lovedCarRefIndex) {
                                      final lovedCarRefItem =
                                          lovedCarRef[lovedCarRefIndex];
                                      return StreamBuilder<CarRecord>(
                                        stream: CarRecord.getDocument(
                                            lovedCarRefItem),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }

                                          final carCardCarRecord =
                                              snapshot.data!;
                                          _model.debugBackendQueries[
                                                  'carCardCarRecord_Container_akb6clz8'] =
                                              debugSerializeParam(
                                            carCardCarRecord,
                                            ParamType.Document,
                                            link:
                                                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=Favorite',
                                            name: 'car',
                                            nullable: false,
                                          );
                                          debugLogWidgetClass(_model);

                                          return Builder(builder: (_) {
                                            return DebugFlutterFlowModelContext(
                                              rootModel: _model.rootModel,
                                              parentModelCallback: (m) {
                                                _model.carCardModels[
                                                    'Keyakb_${lovedCarRefIndex}_of_${lovedCarRef.length}'] = m;
                                              },
                                              child: CarCardWidget(
                                                key: Key(
                                                    'Keyakb_${lovedCarRefIndex}_of_${lovedCarRef.length}'),
                                                car: carCardCarRecord,
                                              ),
                                            );
                                          });
                                        },
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
                                    '3satdo4r' /* You Didn't have any loved cars */,
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
                      ),
                    ].divide(SizedBox(height: 10.0)),
                  ),
                ),
              ].divide(SizedBox(height: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
