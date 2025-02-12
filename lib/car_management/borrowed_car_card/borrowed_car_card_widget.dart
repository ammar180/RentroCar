import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'borrowed_car_card_model.dart';
export 'borrowed_car_card_model.dart';

class BorrowedCarCardWidget extends StatefulWidget {
  const BorrowedCarCardWidget({
    super.key,
    required this.tribData,
  });

  final TripRecord? tribData;

  @override
  State<BorrowedCarCardWidget> createState() => _BorrowedCarCardWidgetState();
}

class _BorrowedCarCardWidgetState extends State<BorrowedCarCardWidget> {
  late BorrowedCarCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BorrowedCarCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<CarRecord>(
      stream: CarRecord.getDocument(widget.tribData!.borrowedCar!),
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

        final containerCarRecord = snapshot.data!;

        return Material(
          color: Colors.transparent,
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.network(
                      valueOrDefault<String>(
                        containerCarRecord.carPhotos.isNotEmpty
                            ? containerCarRecord.carPhotos.firstOrNull
                            : 'https://images.unsplash.com/photo-1494905998402-395d579af36f?w=500&h=500',
                        'https://images.unsplash.com/photo-1494905998402-395d579af36f?w=500&h=500',
                      ),
                      width: 84.49,
                      height: 94.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${containerCarRecord.make} ${containerCarRecord.model}',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 8.0, 4.0, 8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).success,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.tribData?.status?.name,
                                      'pending',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          valueOrDefault<String>(
                            'Due: ${valueOrDefault<String>(
                              dateTimeFormat(
                                "MEd",
                                widget.tribData?.startDate,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                              ' Tue, 2/11',
                            )} - ${valueOrDefault<String>(
                              dateTimeFormat(
                                "MEd",
                                widget.tribData?.endDate,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                              ' Tue, 2/11',
                            )}',
                            'Due: Oct 15, 2023',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: 'Open Sans',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.person_outline,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 20.0,
                                ),
                                StreamBuilder<UsersRecord>(
                                  stream: UsersRecord.getDocument(
                                      widget.tribData?.carOwner ==
                                              currentUserReference
                                          ? widget.tribData!.carBorrower!
                                          : widget.tribData!.carOwner!),
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
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }

                                    final textUsersRecord = snapshot.data!;

                                    return Text(
                                      textUsersRecord.displayName,
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Open Sans',
                                            letterSpacing: 0.0,
                                          ),
                                    );
                                  },
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                  ),
                ].divide(SizedBox(width: 10.0)),
              ),
            ),
          ),
        );
      },
    );
  }
}
