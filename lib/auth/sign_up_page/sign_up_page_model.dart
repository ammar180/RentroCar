import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'sign_up_page_widget.dart' show SignUpPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpPageModel extends FlutterFlowModel<SignUpPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for name_field widget.
  FocusNode? nameFieldFocusNode;
  TextEditingController? nameFieldTextController;
  String? Function(BuildContext, String?)? nameFieldTextControllerValidator;
  String? _nameFieldTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'l8s98555' /* Name is required */,
      );
    }

    return null;
  }

  // State field(s) for phone_field widget.
  FocusNode? phoneFieldFocusNode;
  TextEditingController? phoneFieldTextController;
  String? Function(BuildContext, String?)? phoneFieldTextControllerValidator;
  String? _phoneFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '7nsz4ok9' /* Phone number is required */,
      );
    }

    return null;
  }

  // State field(s) for signup_email_field widget.
  FocusNode? signupEmailFieldFocusNode;
  TextEditingController? signupEmailFieldTextController;
  String? Function(BuildContext, String?)?
      signupEmailFieldTextControllerValidator;
  String? _signupEmailFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'smgx8zm6' /* Email is required */,
      );
    }

    return null;
  }

  // State field(s) for signup_passwrod_field widget.
  FocusNode? signupPasswrodFieldFocusNode;
  TextEditingController? signupPasswrodFieldTextController;
  late bool signupPasswrodFieldVisibility;
  String? Function(BuildContext, String?)?
      signupPasswrodFieldTextControllerValidator;
  // State field(s) for signup_confirm_passwrod_field widget.
  FocusNode? signupConfirmPasswrodFieldFocusNode;
  TextEditingController? signupConfirmPasswrodFieldTextController;
  late bool signupConfirmPasswrodFieldVisibility;
  String? Function(BuildContext, String?)?
      signupConfirmPasswrodFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  LocationRecord? _createdLocation;
  set createdLocation(LocationRecord? value) {
    _createdLocation = value;
    debugLogWidgetClass(this);
  }

  LocationRecord? get createdLocation => _createdLocation;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    nameFieldTextControllerValidator = _nameFieldTextControllerValidator;
    phoneFieldTextControllerValidator = _phoneFieldTextControllerValidator;
    signupEmailFieldTextControllerValidator =
        _signupEmailFieldTextControllerValidator;
    signupPasswrodFieldVisibility = false;
    signupConfirmPasswrodFieldVisibility = false;

    debugLogWidgetClass(this);
  }

  @override
  void dispose() {
    nameFieldFocusNode?.dispose();
    nameFieldTextController?.dispose();

    phoneFieldFocusNode?.dispose();
    phoneFieldTextController?.dispose();

    signupEmailFieldFocusNode?.dispose();
    signupEmailFieldTextController?.dispose();

    signupPasswrodFieldFocusNode?.dispose();
    signupPasswrodFieldTextController?.dispose();

    signupConfirmPasswrodFieldFocusNode?.dispose();
    signupConfirmPasswrodFieldTextController?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetStates: {
          'nameFieldText': debugSerializeParam(
            nameFieldTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=SignUpPage',
            name: 'String',
            nullable: true,
          ),
          'phoneFieldText': debugSerializeParam(
            phoneFieldTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=SignUpPage',
            name: 'String',
            nullable: true,
          ),
          'signupEmailFieldText': debugSerializeParam(
            signupEmailFieldTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=SignUpPage',
            name: 'String',
            nullable: true,
          ),
          'signupPasswrodFieldText': debugSerializeParam(
            signupPasswrodFieldTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=SignUpPage',
            name: 'String',
            nullable: true,
          ),
          'signupConfirmPasswrodFieldText': debugSerializeParam(
            signupConfirmPasswrodFieldTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=SignUpPage',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'createdLocation': debugSerializeParam(
            createdLocation,
            ParamType.Document,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=SignUpPage',
            name: 'location',
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
            'https://app.flutterflow.io/project/rentro-car-74c8w5/tab=uiBuilder&page=SignUpPage',
        searchReference: 'reference=OgpTaWduVXBQYWdlUAFaClNpZ25VcFBhZ2U=',
        widgetClassName: 'SignUpPage',
      );
}
