import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'alert_dialog_widget.dart' show AlertDialogWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AlertDialogModel extends FlutterFlowModel<AlertDialogWidget> {
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
          'title': debugSerializeParam(
            widget?.title,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=alertDialog',
            searchReference:
                'reference=ShcKDwoFdGl0bGUSBjlyNTJ2dnIECAMgAVAAWgV0aXRsZQ==',
            name: 'String',
            nullable: true,
          ),
          'description': debugSerializeParam(
            widget?.description,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=alertDialog',
            searchReference:
                'reference=Sh0KFQoLZGVzY3JpcHRpb24SBnN6bXp5Z3IECAMgAVAAWgtkZXNjcmlwdGlvbg==',
            name: 'String',
            nullable: true,
          ),
          'confirmButton': debugSerializeParam(
            widget?.confirmButton,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=alertDialog',
            searchReference:
                'reference=SioKFwoNY29uZmlybUJ1dHRvbhIGb3drYjJrKgkSB0NvbmZpcm1yBAgDIABQAFoNY29uZmlybUJ1dHRvbg==',
            name: 'String',
            nullable: false,
          ),
          'cancelButton': debugSerializeParam(
            widget?.cancelButton,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=alertDialog',
            searchReference:
                'reference=SigKFgoMY2FuY2VsQnV0dG9uEgZmeXU4aWEqCBIGQ2FuY2VscgQIAyAAUABaDGNhbmNlbEJ1dHRvbg==',
            name: 'String',
            nullable: false,
          ),
          'confirmCallback': debugSerializeParam(
            widget?.confirmCallback,
            ParamType.Action,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=alertDialog',
            searchReference:
                'reference=SiEKGQoPY29uZmlybUNhbGxiYWNrEgY1Y3F3NDByBAgVIABQAFoPY29uZmlybUNhbGxiYWNr',
            name: 'Future Function()',
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
            'https://app.flutterflow.io/project/rentro-car-74c8w5/tab=uiBuilder&page=alertDialog',
        searchReference: 'reference=OgthbGVydERpYWxvZ1AAWgthbGVydERpYWxvZw==',
        widgetClassName: 'alertDialog',
      );
}
