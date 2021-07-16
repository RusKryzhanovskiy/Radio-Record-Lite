import 'package:dio/dio.dart';

mixin DioMixin {
  Dio? _dio;

  Dio get dio {
    return _dio ?? _init();
  }

  Dio _init() {
    _dio = Dio();

    _dio?.options.baseUrl = 'https://www.radiorecord.ru/api/';
    _dio?.options.validateStatus = (_) => true;

    return dio;
  }
}
