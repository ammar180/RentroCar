import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentro_car/features/authentication/providers/user_cubit.dart';
import 'package:rentro_car/features/authentication/providers/user_state.dart';
import 'package:rentro_car/features/authentication/screens/profile_page_widget.dart';
import 'package:rentro_car/utils/common/styles/inputdecoration_style.dart';
import 'package:rentro_car/features/authentication/screens/login_page_widget.dart';
import 'package:rentro_car/utils/customs/app_model.dart';
import 'package:rentro_car/utils/common/theme.dart';
import 'package:rentro_car/utils/common/widgets/app_button_widget.dart';
import 'package:rentro_car/utils/customs/app_utils.dart';
import 'package:flutter/material.dart';

import 'signup_page_model.dart';
export 'signup_page_model.dart';

class SignUpPageWidget extends StatefulWidget {
  /// create a simple login page with username and password fields and login
  /// button and forgetpassword
  const SignUpPageWidget({super.key});

  @override
  State<SignUpPageWidget> createState() => _SignUpPageWidgetState();
}

class _SignUpPageWidgetState extends State<SignUpPageWidget> {
  late SignUpPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpPageModel());

    _model.signupUsernameFieldTextController ??= TextEditingController();
    _model.signupUsernameFieldFocusNode ??= FocusNode();

    _model.signupEmailFieldTextController ??= TextEditingController();
    _model.signupEmailFieldFocusNode ??= FocusNode();

    _model.signupPasswrodFieldTextController ??= TextEditingController();
    _model.signupPasswrodFieldFocusNode ??= FocusNode();

    _model.signupConfirmPasswrodFieldTextController ??= TextEditingController();
    _model.signupConfirmPasswrodFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: AppTheme.of(context).primaryBackground,
        body: SafeArea(
          child: BlocConsumer<UserCubit, UserState>(
            listener: (context, state) {
              if (state is SignInSuccess) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("success"),
                  ),
                );
                context.read<UserCubit>().getUserProfile();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileWidget(),
                  ),
                );
              } else if (state is SignInFailure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.errMessage),
                  ),
                );
              }
            },
            builder: (context, state) {
              context.read<UserCubit>().signUpPageModel = _model;
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://picsum.photos/seed/807/600',
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'RentroCar',
                          style: AppTheme.of(context).headlineSmall.override(
                                fontFamily: 'Roboto Mono',
                                letterSpacing: 0.0,
                              ),
                        ),
                      ].divide(const SizedBox(width: 10)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Sign Up',
                          style: AppTheme.of(context).displaySmall.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                        ),
                        Material(
                          color: Colors.transparent,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            decoration: BoxDecoration(
                              color: AppTheme.of(context).secondaryBackground,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 16, 16),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextFormField(
                                    controller: _model
                                        .signupUsernameFieldTextController,
                                    focusNode:
                                        _model.signupUsernameFieldFocusNode,
                                    autofocus: true,
                                    textInputAction: TextInputAction.next,
                                    obscureText: false,
                                    decoration:
                                        InputdecorationStyle(hint: "user name")
                                            .decorationStyle,
                                    style: AppTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                    cursorColor:
                                        AppTheme.of(context).primaryText,
                                    validator: _model
                                        .signupUsernameFieldTextControllerValidator
                                        .asValidator(context),
                                  ),
                                  TextFormField(
                                    controller:
                                        _model.signupEmailFieldTextController,
                                    focusNode: _model.signupEmailFieldFocusNode,
                                    autofocus: true,
                                    textInputAction: TextInputAction.next,
                                    obscureText: false,
                                    decoration:
                                        InputdecorationStyle(hint: "Email")
                                            .decorationStyle,
                                    style: AppTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                    cursorColor:
                                        AppTheme.of(context).primaryText,
                                    validator: _model
                                        .signupEmailFieldTextControllerValidator
                                        .asValidator(context),
                                  ),
                                  TextFormField(
                                    controller: _model
                                        .signupPasswrodFieldTextController,
                                    focusNode:
                                        _model.signupPasswrodFieldFocusNode,
                                    autofocus: false,
                                    textInputAction: TextInputAction.done,
                                    obscureText:
                                        !_model.signupPasswrodFieldVisibility,
                                    decoration: InputdecorationStyle(
                                        hint: "Password",
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => _model
                                                    .signupPasswrodFieldVisibility =
                                                !_model
                                                    .signupPasswrodFieldVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.signupPasswrodFieldVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            size: 22,
                                          ),
                                        )).decorationStyle,
                                    style: AppTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                    cursorColor:
                                        AppTheme.of(context).primaryText,
                                    validator: _model
                                        .signupPasswrodFieldTextControllerValidator
                                        .asValidator(context),
                                  ),
                                  TextFormField(
                                    controller: _model
                                        .signupConfirmPasswrodFieldTextController,
                                    focusNode: _model
                                        .signupConfirmPasswrodFieldFocusNode,
                                    autofocus: false,
                                    textInputAction: TextInputAction.done,
                                    obscureText: !_model
                                        .signupConfirmPasswrodFieldVisibility,
                                    decoration: InputdecorationStyle(
                                      hint: "Confirm Password",
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => _model
                                                  .signupConfirmPasswrodFieldVisibility =
                                              !_model
                                                  .signupConfirmPasswrodFieldVisibility,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          _model.signupConfirmPasswrodFieldVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          size: 22,
                                        ),
                                      ),
                                    ).decorationStyle,
                                    style: AppTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                    cursorColor:
                                        AppTheme.of(context).primaryText,
                                    validator: _model
                                        .signupConfirmPasswrodFieldTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ].divide(const SizedBox(height: 16)),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have account?',
                              style: AppTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: AppTheme.of(context).primaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  7, 0, 0, 0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginPageWidget(),
                                      ));
                                },
                                child: Text(
                                  'Login',
                                  style: AppTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: AppTheme.of(context).primary,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ].divide(const SizedBox(height: 20)),
                    ),
                    ButtonWidget(
                      onPressed: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfileWidget()));
                        // await context.read<UserCubit>().signUp();
                      },
                      text: 'Sign Up',
                      options: ButtonOptions(
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        height: 62,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: AppTheme.of(context).primary,
                        textStyle: AppTheme.of(context).titleMedium.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              letterSpacing: 0.0,
                            ),
                        elevation: 0,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
