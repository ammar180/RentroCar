import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

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

  @override
  void initState(BuildContext context) {
    passwrodFieldVisibility = false;
  }

  @override
  void dispose() {
    usernameFieldFocusNode?.dispose();
    usernameFieldTextController?.dispose();

    passwrodFieldFocusNode?.dispose();
    passwrodFieldTextController?.dispose();
  }
}
