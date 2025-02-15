import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'car_card_model.dart';
export 'car_card_model.dart';

class CarCardWidget extends StatefulWidget {
  const CarCardWidget({
    super.key,
    required this.car,
  });

  final CarRecord? car;

  @override
  State<CarCardWidget> createState() => _CarCardWidgetState();
}

class _CarCardWidgetState extends State<CarCardWidget> {
  late CarCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CarCardModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.loved = (currentUserDocument?.lovedCars.toList() ?? [])
          .contains(widget.car?.reference);
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.pushNamed(
          'cardetails',
          queryParameters: {
            'car': serializeParam(
              widget.car,
              ParamType.Document,
            ),
          }.withoutNulls,
          extra: <String, dynamic>{
            'car': widget.car,
          },
        );
      },
      child: Container(
        width: 273.66,
        height: 222.3,
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
            Stack(
              alignment: AlignmentDirectional(1.0, -1.0),
              children: [
                Hero(
                  tag: valueOrDefault<String>(
                    widget.car?.carPhotos.firstOrNull,
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
                        widget.car?.carPhotos.firstOrNull,
                        'https://files.friendycar.com/uploads/cars/36261/FnBuiB0vJokoQkoRkRSDdwkSAMHgoo5n19JP0PHg.jpg',
                      ),
                      width: double.infinity,
                      height: 109.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ToggleIcon(
                  onPressed: () async {
                    safeSetState(() => _model.loved = !_model.loved);
                    if (_model.loved) {
                      await currentUserReference!.update({
                        ...mapToFirestore(
                          {
                            'loved_cars':
                                FieldValue.arrayUnion([widget.car?.reference]),
                          },
                        ),
                      });
                    } else {
                      await currentUserReference!.update({
                        ...mapToFirestore(
                          {
                            'loved_cars': FieldValue.arrayRemove(
                                [widget.car?.reference]),
                          },
                        ),
                      });
                    }
                  },
                  value: _model.loved,
                  onIcon: Icon(
                    Icons.favorite,
                    color: FlutterFlowTheme.of(context).secondary,
                    size: 24.0,
                  ),
                  offIcon: Icon(
                    Icons.favorite_border_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(14.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${widget.car?.make} ${widget.car?.model}',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Open Sans',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.star,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 24.0,
                            ),
                            Text(
                              formatNumber(
                                widget.car!.rate,
                                formatType: FormatType.custom,
                                format: '#.##',
                                locale: '',
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
                      valueOrDefault<String>(
                        widget.car?.availableDate != null
                            ? valueOrDefault<String>(
                                dateTimeFormat(
                                  "MMMEd",
                                  widget.car?.availableDate,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                                '2/2/2025',
                              )
                            : 'Available Now!',
                        'Available Now!',
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
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
                              Icons.location_pin,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 24.0,
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'wgakql1z' /* N/A */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Open Sans',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ].divide(SizedBox(width: 4.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.attach_money,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 24.0,
                            ),
                            Text(
                              formatNumber(
                                widget.car!.rentalFare,
                                formatType: FormatType.decimal,
                                decimalType: DecimalType.periodDecimal,
                                currency: 'EGP ',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ].divide(SizedBox(width: 4.0)),
                        ),
                      ],
                    ),
                  ].divide(SizedBox(height: 8.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
