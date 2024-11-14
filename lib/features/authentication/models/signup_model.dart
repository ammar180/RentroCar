import 'package:rentro_car/core/api/end_points.dart';

class SignupModel {
  final String message;

  SignupModel({required this.message});

  factory SignupModel.fromJson(Map<String, dynamic> jsonData) {
    return SignupModel(
      message: jsonData[ApiKeys.message],
    );
  }
}
