import 'package:dio/dio.dart';
import 'package:rentro_car/core/api/end_points.dart';
import 'package:rentro_car/core/cache/cache_helper.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[ApiKeys.token] = CacheHelper().getData(key: ApiKeys.token);
    super.onRequest(options, handler);
  }
}
