import 'package:rentro_car/core/api/api_consumer.dart';
import 'package:dio/dio.dart';
import 'package:rentro_car/core/api/api_interceptor.dart';
import 'package:rentro_car/core/api/end_points.dart';
import 'package:rentro_car/core/errors/exceptions.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;
  DioConsumer({required this.dio}) {
    dio.options.baseUrl = EndPoints.baseUrl;
    dio.interceptors.add(ApiInterceptor());
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ));
  }

  @override
  Future get(String path,
      {dynamic data, Map<String, dynamic>? queryParameter}) async {
    try {
      final response = await dio.get(
        path,
        data: data,
        queryParameters: queryParameter,
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future delete(String path,
      {dynamic data,
      Map<String, dynamic>? queryParameter,
      bool isFormData = false}) async {
    try {
      final response = await dio.delete(
        path,
        data: isFormData?FormData.fromMap(data): data,
        queryParameters: queryParameter,
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future patch(String path,
      {dynamic data,
      Map<String, dynamic>? queryParameter,
      bool isFormData = false}) async {
    try {
      final response = await dio.patch(
        path,
        data: isFormData?FormData.fromMap(data): data,
        queryParameters: queryParameter,
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future post(String path,
      {dynamic data,
      Map<String, dynamic>? queryParameter,
      bool isFormData = false}) async {
    try {
      final response = await dio.post(
        path,
        data: isFormData?FormData.fromMap(data): data,
        queryParameters: queryParameter,
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future put(String path,
      {dynamic data,
      Map<String, dynamic>? queryParameter,
      bool isFormData = false}) async {
    try {
      final response = await dio.put(
        path,
        data: isFormData?FormData.fromMap(data): data,
        queryParameters: queryParameter,
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }
}
