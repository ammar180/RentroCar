import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_page_widget.dart' show SignUpPageWidget;
import 'package:flutter/material.dart';

class SignUpPageModel extends FlutterFlowModel<SignUpPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for name_field widget.
  FocusNode? nameFieldFocusNode;
  TextEditingController? nameFieldTextController;
  String? Function(BuildContext, String?)? nameFieldTextControllerValidator;
  // State field(s) for phone_field widget.
  FocusNode? phoneFieldFocusNode;
  TextEditingController? phoneFieldTextController;
  String? Function(BuildContext, String?)? phoneFieldTextControllerValidator;
  // State field(s) for signup_email_field widget.
  FocusNode? signupEmailFieldFocusNode;
  TextEditingController? signupEmailFieldTextController;
  String? Function(BuildContext, String?)?
      signupEmailFieldTextControllerValidator;
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
  LocationRecord? createdLocation;

  @override
  void initState(BuildContext context) {
    signupPasswrodFieldVisibility = false;
    signupConfirmPasswrodFieldVisibility = false;
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
}
