import 'package:apitask/api_const/end_points.dart';
import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;
  static void init() {
    dio = Dio(
      BaseOptions(
        baseUrl:EndPoints.baseUrl ,
      ),
    );
  }
}
