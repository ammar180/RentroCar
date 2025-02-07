import 'package:rentro_car/core/api/end_points.dart';
import 'package:rentro_car/features/home/models/car_model.dart';

class HomeModel {
  final List<CarModel> topRatedCars;
  final List<CarModel> mostPopularCars;
  HomeModel({required this.topRatedCars, required this.mostPopularCars});
  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      topRatedCars: (json[ApiKeys.topRatedCars] as List)
        .map((e) => CarModel.fromJson(e))
        .toList(),
      mostPopularCars: (json[ApiKeys.mostPopularCars] as List)
        .map((e) => CarModel.fromJson(e))
        .toList(),
    );
  }
}
