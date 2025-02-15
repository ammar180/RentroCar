import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'car_card_big_model.dart';
export 'car_card_big_model.dart';

class CarCardBigWidget extends StatefulWidget {
  const CarCardBigWidget({
    super.key,
    required this.carParam,
  });

  final CarRecord? carParam;

  @override
  State<CarCardBigWidget> createState() => _CarCardBigWidgetState();
}

class _CarCardBigWidgetState extends State<CarCardBigWidget> {
  late CarCardBigModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CarCardBigModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.0,
      height: 280.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Color(0x19131313),
          width: 1.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Hero(
            tag: valueOrDefault<String>(
              widget.carParam?.carPhotos.firstOrNull,
              'https://files.friendycar.com/uploads/cars/36261/FnBuiB0vJokoQkoRkRSDdwkSAMHgoo5n19JP0PHg.jpg',
            ),
            transitionOnUserGestures: true,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              child: Image.network(
                valueOrDefault<String>(
                  widget.carParam?.carPhotos.firstOrNull,
                  'https://files.friendycar.com/uploads/cars/36261/FnBuiB0vJokoQkoRkRSDdwkSAMHgoo5n19JP0PHg.jpg',
                ),
                width: double.infinity,
                height: 167.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      '${widget.carParam?.make} ${widget.carParam?.model}',
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Open Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.star,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 14.0,
                            ),
                            Text(
                              valueOrDefault<String>(
                                widget.carParam?.rate.toString(),
                                '0.0',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'idl0k8ui' /* . 5 Trips */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ].divide(SizedBox(width: 4.0)),
                        ),
                      ],
                    ),
                    Text(
                      widget.carParam?.availableDate != null
                          ? valueOrDefault<String>(
                              dateTimeFormat(
                                "MMMEd",
                                widget.carParam?.availableDate,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                              '2/9/2025',
                            )
                          : 'Available Now!',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Open Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].divide(SizedBox(height: 8.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      formatNumber(
                        widget.carParam!.rentalFare,
                        formatType: FormatType.custom,
                        format: 'EGP # / day',
                        locale: '',
                      ),
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Open Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          'cardetails',
                          queryParameters: {
                            'car': serializeParam(
                              widget.carParam,
                              ParamType.Document,
                            ),
                          }.withoutNulls,
                          extra: <String, dynamic>{
                            'car': widget.carParam,
                          },
                        );
                      },
                      text: FFLocalizations.of(context).getText(
                        'hig0cuud' /* Details */,
                      ),
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0x1A131313),
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyLarge
                            .override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ].divide(SizedBox(height: 5.0)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
