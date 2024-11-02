import 'package:rentro_car/features/authentication/screens/login_page_widget.dart';
import 'package:rentro_car/utils/customs/app_model.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class LoginPageModel extends AppModel<LoginPageWidget> {
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
