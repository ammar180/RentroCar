import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'alert_dialog_model.dart';
export 'alert_dialog_model.dart';

class AlertDialogWidget extends StatefulWidget {
  const AlertDialogWidget({
    super.key,
    required this.title,
    required this.description,
    String? confirmButton,
    String? cancelButton,
    this.confirmCallback,
  })  : confirmButton = confirmButton ?? 'Confirm',
        cancelButton = cancelButton ?? 'Cancel';

  final String? title;
  final String? description;
  final String confirmButton;
  final String cancelButton;
  final Future Function()? confirmCallback;

  @override
  State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  late AlertDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlertDialogModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
        child: Material(
          color: Colors.transparent,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Container(
            width: 340.0,
            constraints: const BoxConstraints(
              maxWidth: 530.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.title,
                      'Title',
                    ),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Open Sans',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.description,
                      'Description',
                    ),
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Open Sans',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {},
                        text: valueOrDefault<String>(
                          widget.cancelButton,
                          'Cancel',
                        ),
                        options: FFButtonOptions(
                          width: 140.0,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).alternate,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Open Sans',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          elevation: 1.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).secondaryText,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          await widget.confirmCallback?.call();
                        },
                        text: valueOrDefault<String>(
                          widget.confirmButton,
                          'Confirm',
                        ),
                        options: FFButtonOptions(
                          width: 140.0,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).accent1,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ],
                  ),
                ].divide(const SizedBox(height: 16.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
