import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for username_field widget.
  FocusNode? usernameFieldFocusNode;
  TextEditingController? usernameFieldTextController;
  String? Function(BuildContext, String?)? usernameFieldTextControllerValidator;
  // State field(s) for passwrod_field widget.
  FocusNode? passwrodFieldFocusNode;
  TextEditingController? passwrodFieldTextController;
  late bool passwrodFieldVisibility;
  String? Function(BuildContext, String?)? passwrodFieldTextControllerValidator;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    passwrodFieldVisibility = false;

    debugLogWidgetClass(this);
  }

  @override
  void dispose() {
    usernameFieldFocusNode?.dispose();
    usernameFieldTextController?.dispose();

    passwrodFieldFocusNode?.dispose();
    passwrodFieldTextController?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'errormessage': debugSerializeParam(
            widget?.errormessage,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=LoginPage',
            searchReference:
                'reference=SiAKFgoMZXJyb3JtZXNzYWdlEgZvZGkyb2cqAhIAcgIIA1ABWgxlcnJvcm1lc3NhZ2U=',
            name: 'String',
            nullable: false,
          )
        }.withoutNulls,
        widgetStates: {
          'usernameFieldText': debugSerializeParam(
            usernameFieldTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=LoginPage',
            name: 'String',
            nullable: true,
          ),
          'passwrodFieldText': debugSerializeParam(
            passwrodFieldTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=LoginPage',
            name: 'String',
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
        link:
            'https://app.flutterflow.io/project/rentro-car-74c8w5/tab=uiBuilder&page=LoginPage',
        searchReference: 'reference=OglMb2dpblBhZ2VQAVoJTG9naW5QYWdl',
        widgetClassName: 'LoginPage',
      );
}
