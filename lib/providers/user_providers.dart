import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quant_bot_front/models/user_models/user_login_model.dart';
import 'package:quant_bot_front/providers/dio_providers.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  Future<dynamic> build() async => {};

  Future<void> handleLogin(UserLoginModel model) async {
    final dio = ref.read(dioProvider);
    final response = await dio.post('/api/v1/login', data: model.toJson());

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('Authorization', 'Bearer ${response.data['accessToken']}');
    await prefs.setString('RefreshToken', 'Bearer ${response.data['refreshToken']}');

    final dioNotifier = ref.read(dioProvider.notifier);
    dioNotifier.updateAccessToken(response.data['accessToken']);
  }
}

final userProvider = AsyncNotifierProvider.autoDispose<UserNotifier, void>(
  UserNotifier.new,
);
