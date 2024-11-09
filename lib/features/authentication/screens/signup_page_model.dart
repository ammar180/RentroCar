import 'signup_page_widget.dart';
import 'package:rentro_car/utils/customs/app_model.dart';
import 'package:flutter/material.dart';

class SignUpPageModel extends AppModel<SignUpPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for signup_username_field widget.
  FocusNode? signupUsernameFieldFocusNode;
  TextEditingController? signupUsernameFieldTextController;
  String? Function(BuildContext, String?)?
      signupUsernameFieldTextControllerValidator;
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

  @override
  void initState(BuildContext context) {
    signupPasswrodFieldVisibility = false;
    signupConfirmPasswrodFieldVisibility = false;
  }

  @override
  void dispose() {
    signupUsernameFieldFocusNode?.dispose();
    signupUsernameFieldTextController?.dispose();

    signupEmailFieldFocusNode?.dispose();
    signupEmailFieldTextController?.dispose();

    signupPasswrodFieldFocusNode?.dispose();
    signupPasswrodFieldTextController?.dispose();

    signupConfirmPasswrodFieldFocusNode?.dispose();
    signupConfirmPasswrodFieldTextController?.dispose();
  }
}
