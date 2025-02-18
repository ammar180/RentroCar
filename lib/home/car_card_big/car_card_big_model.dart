import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'car_card_big_widget.dart' show CarCardBigWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CarCardBigModel extends FlutterFlowModel<CarCardBigWidget> {
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
          'carParam': debugSerializeParam(
            widget?.carParam,
            ParamType.Document,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=CarCardBig',
            searchReference:
                'reference=Si0KEgoIY2FyUGFyYW0SBnB1eGU3YnIXCAcgASoRCg8KA2NhchIINmRrZHdmMGRQAFoIY2FyUGFyYW0=',
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
            'https://app.flutterflow.io/project/rentro-car-74c8w5/tab=uiBuilder&page=CarCardBig',
        searchReference: 'reference=OgpDYXJDYXJkQmlnUABaCkNhckNhcmRCaWc=',
        widgetClassName: 'CarCardBig',
      );
}
