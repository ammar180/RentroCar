import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'car_card_big_model.dart';
export 'car_card_big_model.dart';

class CarCardBigWidget extends StatefulWidget {
  const CarCardBigWidget({super.key});

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
          color: const Color(0x19131313),
          width: 1.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Hero(
            tag: 'italyImage',
            transitionOnUserGestures: true,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              child: Image.network(
                'https://images.unsplash.com/photo-1528114039593-4366cc08227d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8aXRhbHl8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
                width: double.infinity,
                height: 167.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Toyota crolla',
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
                              '5.00',
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Text(
                              '. 5 Trips',
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ].divide(const SizedBox(width: 4.0)),
                        ),
                      ],
                    ),
                    Text(
                      'Available on 2 August',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Open Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'EGP 720/day',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Open Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                    FFButtonWidget(
                      onPressed: () {
                        print('ButtonDetails pressed ...');
                      },
                      text: 'Details',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0x1A131313),
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
                  ].divide(const SizedBox(height: 5.0)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
