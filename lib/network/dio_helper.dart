import 'package:dio/dio.dart';

class Diohelper {
  static Dio? dio;

  // https://www.goldapi.io/api/XAU/EGP

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://www.goldapi.io/api/',
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData(String url) {
    dio!.options.headers = {'x-access-token': 'goldapi-h09znrlmm9p4xb-io   '};

    return dio!.get(url);
  }
}
