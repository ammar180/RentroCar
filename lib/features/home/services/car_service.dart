import 'package:dartz/dartz.dart';
import 'package:rentro_car/core/api/api_consumer.dart';
import 'package:rentro_car/core/api/end_points.dart';
import 'package:rentro_car/core/errors/exceptions.dart';
import 'package:rentro_car/features/home/models/home_model.dart';

class CarService {
  final ApiConsumer api;
  CarService({required this.api});

  Future<Either<HomeModel, String>> getCars() async {
    try {
      final response = await api.get(EndPoints.getHomeCars);
      final homeData = HomeModel.fromJson(response);
      return Left(homeData);
    } on ServerException catch (e) {
      return Right(e.errModel.errorMessage);
    }
  }
}
