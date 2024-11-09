import 'package:rentro_car/core/api/end_points.dart';

class UserModel {
  final String name;
  final String email;
  final String profilePic;

  UserModel({
    required this.name,
    required this.email,
    required this.profilePic,
  });

  factory UserModel.fromJson(Map<String, dynamic> jsonData) {
    return UserModel(
      name: jsonData['user'][ApiKeys.name],
      email: jsonData['user'][ApiKeys.email],
      profilePic: jsonData['user'][ApiKeys.profileImg] ??
          "https://images.unsplash.com/photo-1592520113018-180c8bc831c9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTI3fHxwcm9maWxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
    );
  }
}
