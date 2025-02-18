import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'my_car_card_widget.dart' show MyCarCardWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyCarCardModel extends FlutterFlowModel<MyCarCardWidget> {
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
          'carData': debugSerializeParam(
            widget?.carData,
            ParamType.Document,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=MyCarCard',
            searchReference:
                'reference=SlMKEQoHY2FyRGF0YRIGOWNtb3o2chcIByABKhEKDwoDY2FyEgg2ZGtkd2YwZHolQ2FyIGRhdGEgaW4gYXBwbGljYXRpb24gRG9jdW1lbnQgRm9ybVAAWgdjYXJEYXRh',
            name: 'car',
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
            'https://app.flutterflow.io/project/rentro-car-74c8w5/tab=uiBuilder&page=MyCarCard',
        searchReference: 'reference=OglNeUNhckNhcmRQAFoJTXlDYXJDYXJk',
        widgetClassName: 'MyCarCard',
      );
}
