import 'package:rentro_car/core/api/end_points.dart';

class CarModel {
  final int carId;
  final String model;
  final int availableDays;
  final num rentingPrice;
  final bool isAvailable;
  final List<String> carPhotos;

  CarModel({
    required this.carId,
    required this.model,
    required this.availableDays,
    required this.rentingPrice,
    required this.isAvailable,
    required this.carPhotos,
  });

  factory CarModel.fromJson(Map<String, dynamic> jsonData) {
    return CarModel(
      carId: jsonData[ApiKeys.carId ],
      model: jsonData[ApiKeys.carModel],
      availableDays: jsonData[ApiKeys.carAvailableDays],
      rentingPrice: jsonData[ApiKeys.carRentingPrice],
      isAvailable: jsonData[ApiKeys.carIsAvailable],
      carPhotos: jsonData[ApiKeys.carPhotos],
    );
  }
}
