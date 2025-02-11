import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
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
    return StreamBuilder<List<TripRecord>>(
      stream: queryTripRecord(
        queryBuilder: (tripRecord) => tripRecord.where(
          'carOwner',
          isEqualTo: currentUserReference,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<TripRecord> notificationsTripRecordList = snapshot.data!;

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
              automaticallyImplyLeading: false,
              title: Text(
                'Notifications',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Open Sans',
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: const [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Builder(
                builder: (context) {
                  final requests = notificationsTripRecordList.toList();

                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: requests.length,
                    itemBuilder: (context, requestsIndex) {
                      final requestsItem = requests[requestsIndex];
                      return StreamBuilder<UsersRecord>(
                        stream:
                            UsersRecord.getDocument(requestsItem.carBorrower!),
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

                          final listTileUsersRecord = snapshot.data!;

                          return Material(
                            color: Colors.transparent,
                            child: ListTile(
                              title: Text(
                                '${listTileUsersRecord.displayName}- total:${valueOrDefault<String>(
                                  formatNumber(
                                    requestsItem.totalPrice,
                                    formatType: FormatType.custom,
                                    format: 'EGP #',
                                    locale: '',
                                  ),
                                  'EGP 0',
                                )}',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Open Sans',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              subtitle: Text(
                                'from: ${valueOrDefault<String>(
                                  dateTimeFormat(
                                    "MMMEd",
                                    requestsItem.startDate,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  ),
                                  '2-2-2005',
                                )} to: ${dateTimeFormat(
                                  "MMMEd",
                                  requestsItem.endDate,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                )}( ${requestsItem.status?.name} )',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              dense: false,
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
