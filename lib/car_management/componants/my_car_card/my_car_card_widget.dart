import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'my_car_card_model.dart';
export 'my_car_card_model.dart';

class MyCarCardWidget extends StatefulWidget {
  const MyCarCardWidget({
    super.key,
    required this.carData,
  });

  /// Car data in application Document Form
  final CarRecord? carData;

  @override
  State<MyCarCardWidget> createState() => _MyCarCardWidgetState();
}

class _MyCarCardWidgetState extends State<MyCarCardWidget> {
  late MyCarCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyCarCardModel());

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
                  widget.carData?.carPhotos.firstOrNull,
                  'https://files.friendycar.com/uploads/cars/35749/2tTXTMuft8KgNNvNZpR7JSAu1cUQnTM7sxc8uAWA.jpg',
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
                      widget.carData?.carPhotos.firstOrNull,
                      'https://files.friendycar.com/uploads/cars/35749/2tTXTMuft8KgNNvNZpR7JSAu1cUQnTM7sxc8uAWA.jpg',
                    ),
                    width: double.infinity,
                    height: 109.0,
                    fit: BoxFit.cover,
                  ),
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
                        valueOrDefault<String>(
                          widget.carData?.make,
                          'BYD',
                        ),
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
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
                            size: 20.0,
                          ),
                          Text(
                            valueOrDefault<String>(
                              formatNumber(
                                widget.carData?.rate,
                                formatType: FormatType.decimal,
                                decimalType: DecimalType.periodDecimal,
                              ),
                              '5.00',
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
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.carData?.model,
                          'F3',
                        ),
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Open Sans',
                                  letterSpacing: 0.0,
                                ),
                      ),
                      Icon(
                        Icons.circle,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 7.0,
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.carData?.year.toString(),
                          '2007',
                        ),
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Open Sans',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ].divide(SizedBox(width: 5.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.visibility,
                            color: valueOrDefault<Color>(
                              widget.carData!.isVisible
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).secondary,
                              FlutterFlowTheme.of(context).primary,
                            ),
                            size: 24.0,
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget.carData?.isVisible != null
                                  ? 'Visible'
                                  : 'UnVisable',
                              'UnVisible',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodySmall
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: valueOrDefault<Color>(
                                    widget.carData!.isVisible
                                        ? FlutterFlowTheme.of(context)
                                            .primaryText
                                        : FlutterFlowTheme.of(context)
                                            .secondary,
                                    FlutterFlowTheme.of(context).primaryText,
                                  ),
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
                            valueOrDefault<String>(
                              formatNumber(
                                widget.carData?.rentalFare,
                                formatType: FormatType.custom,
                                format: 'EGP # / Day',
                                locale: '',
                              ),
                              'EGP 720 / Day',
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ].divide(SizedBox(width: 4.0)),
                      ),
                    ],
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
