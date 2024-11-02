import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rentro_car/core/api/dio_consumer.dart';
import 'package:rentro_car/features/authentication/services/user_service.dart';

class AuthProvider extends ChangeNotifier {
  UserService loginService = UserService(api: DioConsumer(dio: Dio()));
}
