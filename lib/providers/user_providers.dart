import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
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

  Future<void> handleLogout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('Authorization');
    await prefs.remove('RefreshToken');

    //여기서 서버에서 로그아웃 처리하는 로직 추가

    final dioNotifier = ref.read(dioProvider.notifier);
    dioNotifier.updateAccessToken('');
  }

  Future<void> setUser() async {
    final response = await ref.read(dioProvider).get('/api/v1/users/me');
    print('this is response.data ${response.data}');
  }
}

final userProvider = AsyncNotifierProvider.autoDispose<UserNotifier, void>(
  UserNotifier.new,
);
