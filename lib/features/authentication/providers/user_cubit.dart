import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentro_car/features/authentication/models/user_model.dart';
import 'package:rentro_car/features/authentication/screens/login_page_model.dart';
import 'package:rentro_car/features/authentication/screens/signup_page_model.dart';
import 'package:rentro_car/features/authentication/providers/user_state.dart';
import 'package:rentro_car/features/authentication/services/user_service.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.userService) : super(AuthInitial());

  final UserService userService;
  late LoginPageModel loginPageModel;
  late SignUpPageModel signUpPageModel;

  signUp() async {
    emit(SignUpLoading());
    final response = await userService.signUp(
      name: signUpPageModel.signupUsernameFieldTextController!.text,
      email: signUpPageModel.signupEmailFieldTextController!.text,
      password: signUpPageModel.signupPasswrodFieldTextController!.text,
      confirmPassword:
          signUpPageModel.signupConfirmPasswrodFieldTextController!.text,
    );
    response.fold(
      (errMessage) => emit(SignUpFailure(errMessage: errMessage)),
      (signUpModel) => emit(SignUpSuccess(message: signUpModel.message)),
    );
  }

  login() async {
    emit(SignInLoading());
    final response = await userService.login(
      email: loginPageModel.emailFieldTextController!.text,
      password: loginPageModel.passwrodFieldTextController!.text,
    );
    response.fold(
      (errMessage) => emit(SignInFailure(errMessage: errMessage)),
      (signInModel) => emit(SignInSuccess()),
    );
  }

  getUserProfile() async {
    emit(GetUserLoading());
    // final response = await userService.getUserProfile();
    // response.fold(
    //   (errMessage) => emit(GetUserFailure(errMessage: errMessage)),
    //   (user) => emit(GetUserSuccess(user: user)),
    // );
    emit(GetUserSuccess(
        user: UserModel(
            name: "3mmar",
            email: "3mmar@gmail.com",
            profilePic:
                'https://th.bing.com/th/id/R.9767b518f377dbe07a01cfc4584efc9f?rik=%2fTOJbw4sTquGLg&pid=ImgRaw&r=0')));
  }
}
