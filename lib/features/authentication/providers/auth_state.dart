import 'package:rentro_car/features/authentication/models/user_model.dart';

class AuthState {}

final class AuthInitial extends AuthState {}

final class SignInSuccess extends AuthState {}

final class UploadProfilePic extends AuthState {}

final class SignInLoading extends AuthState {}

final class SignInFailure extends AuthState {
  final String errMessage;

  SignInFailure({required this.errMessage});
}

final class SignUpSuccess extends AuthState {
  final String message;

  SignUpSuccess({required this.message});
}

final class SignUpLoading extends AuthState {}

final class SignUpFailure extends AuthState {
  final String errMessage;

  SignUpFailure({required this.errMessage});
}

final class GetUserSuccess extends AuthState {
  final UserModel user;

  GetUserSuccess({required this.user});
}

final class GetUserLoading extends AuthState {}

final class GetUserFailure extends AuthState {
  final String errMessage;

  GetUserFailure({required this.errMessage});
}
