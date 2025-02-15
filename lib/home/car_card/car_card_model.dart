import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'car_card_widget.dart' show CarCardWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CarCardModel extends FlutterFlowModel<CarCardWidget> {
  ///  Local state fields for this component.

  bool _loved = false;
  set loved(bool value) {
    _loved = value;
    debugLogWidgetClass(this);
  }

  bool get loved => _loved;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'car': debugSerializeParam(
            widget?.car,
            ParamType.Document,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=CarCard',
            searchReference:
                'reference=SigKDQoDY2FyEgY2cnVpbGZyFwgHIAEqEQoPCgNjYXISCDZka2R3ZjBkUABaA2Nhcg==',
            name: 'car',
            nullable: true,
          )
        }.withoutNulls,
        localStates: {
          'loved': debugSerializeParam(
            loved,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=CarCard',
            searchReference:
                'reference=QhYKDgoFbG92ZWQSBWIydWk4cgQIBSABUABaBWxvdmVkYgdDYXJDYXJk',
            name: 'bool',
            nullable: false,
          )
        },
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/rentro-car-74c8w5/tab=uiBuilder&page=CarCard',
        searchReference: 'reference=OgdDYXJDYXJkUABaB0NhckNhcmQ=',
        widgetClassName: 'CarCard',
      );
}
