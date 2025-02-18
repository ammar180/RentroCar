import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'notifications_model.dart';
export 'notifications_model.dart';

class NotificationsWidget extends StatefulWidget {
  const NotificationsWidget({super.key});

  @override
  State<NotificationsWidget> createState() => _NotificationsWidgetState();
}

class _NotificationsWidgetState extends State<NotificationsWidget> {
  late NotificationsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationsModel());

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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
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
                            '8fwidv58' /* RentroCar */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Roboto Mono',
                                letterSpacing: 0.0,
                              ),
                        ),
                      ].divide(SizedBox(width: 10.0)),
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.8,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'mkkb7air' /* Your Renting Requests */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Open Sans',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Flexible(
                            child: StreamBuilder<List<TripRecord>>(
                              stream: queryTripRecord(
                                queryBuilder: (tripRecord) => tripRecord
                                    .where(
                                      'carOwner',
                                      isEqualTo: currentUserReference,
                                    )
                                    .where(
                                      'status',
                                      isEqualTo: Status.pending.serialize(),
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
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<TripRecord>
                                    conditionalBuilderTripRecordList =
                                    snapshot.data!;

                                return Builder(
                                  builder: (context) {
                                    if (conditionalBuilderTripRecordList
                                        .isNotEmpty) {
                                      return Builder(
                                        builder: (context) {
                                          final containerVar =
                                              conditionalBuilderTripRecordList
                                                  .toList();

                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: containerVar.length,
                                            itemBuilder:
                                                (context, containerVarIndex) {
                                              final containerVarItem =
                                                  containerVar[
                                                      containerVarIndex];
                                              return StreamBuilder<UsersRecord>(
                                                stream: UsersRecord.getDocument(
                                                    containerVarItem
                                                        .carBorrower!),
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
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }

                                                  final listTileUsersRecord =
                                                      snapshot.data!;

                                                  return InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                        'ownerBookingSammary',
                                                        queryParameters: {
                                                          'tripDocument':
                                                              serializeParam(
                                                            containerVarItem,
                                                            ParamType.Document,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          'tripDocument':
                                                              containerVarItem,
                                                        },
                                                      );
                                                    },
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      child: ListTile(
                                                        title: Text(
                                                          '${listTileUsersRecord.displayName} - ${formatNumber(
                                                            containerVarItem
                                                                .totalPrice,
                                                            formatType:
                                                                FormatType
                                                                    .custom,
                                                            format: 'EGP #',
                                                            locale: '',
                                                          )}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        subtitle: Text(
                                                          '${(FFLocalizations.of(context).languageCode == '') || (FFLocalizations.of(context).languageCode == 'en') ? 'From: (' : 'من: ('}${dateTimeFormat(
                                                            "MMMEd",
                                                            containerVarItem
                                                                .startDate,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          )}${valueOrDefault<String>(
                                                            (FFLocalizations.of(context).languageCode ==
                                                                            '') ||
                                                                    (FFLocalizations.of(context)
                                                                            .languageCode ==
                                                                        'en')
                                                                ? ') to: ('
                                                                : ') الى: (',
                                                            ') to: (',
                                                          )}${dateTimeFormat(
                                                            "MMMEd",
                                                            containerVarItem
                                                                .endDate,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          )})',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        trailing: Icon(
                                                          Icons
                                                              .arrow_forward_ios_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                        tileColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        dense: false,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    12.0,
                                                                    0.0),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          );
                                        },
                                      );
                                    } else {
                                      return Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'e0xrxvnc' /* You Didn't have any notificati... */,
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
                                );
                              },
                            ),
                          ),
                        ].divide(SizedBox(height: 10.0)),
                      ),
                    ),
                  ].divide(SizedBox(height: 20.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
