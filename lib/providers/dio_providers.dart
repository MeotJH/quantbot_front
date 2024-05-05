import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DioNotifier extends Notifier<Dio> {
  late Dio _dio;
  static const backEndUrl = "BACK_END_URL";
  DioNotifier() {
    _dio = Dio(BaseOptions(
      baseUrl: dotenv.get(backEndUrl),
    ));
  }
  @override
  Dio build() {
    return _dio;
  }

  void updateAccessToken(String token) {
    _dio.options = _dio.options.copyWith(
      headers: {'Authorization': 'Bearer $token'},
    );
  }
}

final dioProvider = NotifierProvider<DioNotifier, Dio>(DioNotifier.new);
