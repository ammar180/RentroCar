import 'package:dio/dio.dart';
import 'package:rentro_car/core/errors/error_model.dart';

class ServerExcptions implements Exception {
  final ErrorModel errorModel;
  ServerExcptions({required this.errorModel});
}
    void handleDioExceptions(DioException e) {

    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        throw ServerExcptions(
            errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.sendTimeout:
        throw ServerExcptions(
            errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.receiveTimeout:
        throw ServerExcptions(
            errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.badCertificate:
        throw ServerExcptions(
            errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.cancel:
        throw ServerExcptions(
            errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.connectionError:
        throw ServerExcptions(
            errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.unknown:
        throw ServerExcptions(
            errorModel: ErrorModel.fromJson(e.response!.data));

      case DioExceptionType.badResponse:
        switch (e.response?.statusCode) {
          case 400:
            throw ServerExcptions(
                errorModel: ErrorModel.fromJson(e.response!.data));
          case 401:
            throw ServerExcptions(
                errorModel: ErrorModel.fromJson(e.response!.data));
          case 403:
            throw ServerExcptions(
                errorModel: ErrorModel.fromJson(e.response!.data));
          case 404:
            throw ServerExcptions(
                errorModel: ErrorModel.fromJson(e.response!.data));
          case 409:
            throw ServerExcptions(
                errorModel: ErrorModel.fromJson(e.response!.data));
          case 422:
            throw ServerExcptions(
                errorModel: ErrorModel.fromJson(e.response!.data));
          case 504:
            throw ServerExcptions(
                errorModel: ErrorModel.fromJson(e.response!.data));
        }
    }
  }
