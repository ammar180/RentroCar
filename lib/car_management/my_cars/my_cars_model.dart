import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/car_management/borrowed_car_card/borrowed_car_card_widget.dart';
import '/car_management/componants/my_car_card/my_car_card_widget.dart';
import '/components/alert_dialog_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'my_cars_widget.dart' show MyCarsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyCarsModel extends FlutterFlowModel<MyCarsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? _dialogResult;
  set dialogResult(bool? value) {
    _dialogResult = value;
    debugLogWidgetClass(this);
  }

  bool? get dialogResult => _dialogResult;

  // Models for MyCarCard dynamic component.
  Map<String, FlutterFlowModel> myCarCardModels = {};
  // Models for borrowedCarCard dynamic component.
  Map<String, FlutterFlowModel> borrowedCarCardModels = {};

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    debugLogWidgetClass(this);
  }

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        actionOutputs: {
          'dialogResult': debugSerializeParam(
            dialogResult,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=MyCars',
            name: 'bool',
            nullable: true,
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
        dynamicComponentStates: {
          'myCarCardModels (List<MyCarCard>)': DynamicWidgetClassDebugData(
            componentStates: Map.fromIterables(
              List.generate(myCarCardModels.length, (index) => '[$index]'),
              myCarCardModels.values.map((e) => e.toWidgetClassDebugData()),
            ),
          ),
          'borrowedCarCardModels (List<borrowedCarCard>)':
              DynamicWidgetClassDebugData(
            componentStates: Map.fromIterables(
              List.generate(
                  borrowedCarCardModels.length, (index) => '[$index]'),
              borrowedCarCardModels.values
                  .map((e) => e.toWidgetClassDebugData()),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/rentro-car-74c8w5/tab=uiBuilder&page=MyCars',
        searchReference: 'reference=OgZNeUNhcnNQAVoGTXlDYXJz',
        widgetClassName: 'MyCars',
      );
}
