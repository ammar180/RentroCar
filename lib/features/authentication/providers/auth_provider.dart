import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rentro_car/core/api/dio_consumer.dart';
import 'package:rentro_car/features/authentication/services/login_service.dart';

class AuthProvider extends ChangeNotifier {
  LoginService loginService = LoginService(api: DioConsumer(dio: Dio()));
}
