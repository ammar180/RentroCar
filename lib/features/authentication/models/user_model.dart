
import 'package:rentro_car/core/api/end_points.dart';

class UserModel {
  final String profilePic;
  final String email;
  final String phone;
  final String name;
  final Map<String, dynamic> address;

  UserModel({
    required this.profilePic,
    required this.email,
    required this.phone,
    required this.name,
    required this.address,
  });

  factory UserModel.fromJson(Map<String, dynamic> jsonData) {
    return UserModel(
      profilePic: jsonData['user'][ApiKeys.profileImg],
      email: jsonData['user'][ApiKeys.email],
      phone: jsonData['user'][ApiKeys.phone],
      name: jsonData['user'][ApiKeys.name],
      address: jsonData['user'][ApiKeys.location],
    );
  }
}
