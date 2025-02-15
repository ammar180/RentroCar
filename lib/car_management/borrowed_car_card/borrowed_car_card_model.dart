import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'borrowed_car_card_widget.dart' show BorrowedCarCardWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BorrowedCarCardModel extends FlutterFlowModel<BorrowedCarCardWidget> {
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
          'tribData': debugSerializeParam(
            widget?.tribData,
            ParamType.Document,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=borrowedCarCard',
            searchReference:
                'reference=Si4KEgoIdHJpYkRhdGESBnp5djg3dnIYCAcgASoSChAKBHRyaXASCG04ZGR2bnc4UABaCHRyaWJEYXRh',
            name: 'trip',
            nullable: true,
          )
        }.withoutNulls,
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
            'https://app.flutterflow.io/project/rentro-car-74c8w5/tab=uiBuilder&page=borrowedCarCard',
        searchReference:
            'reference=Og9ib3Jyb3dlZENhckNhcmRQAFoPYm9ycm93ZWRDYXJDYXJk',
        widgetClassName: 'borrowedCarCard',
      );
}
