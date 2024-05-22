import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quant_bot_front/models/user_models/user_login_model.dart';
import 'package:quant_bot_front/models/user_models/user_model.dart';
import 'package:quant_bot_front/providers/dio_providers.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserNotifier extends AutoDisposeAsyncNotifier<UserModel> {
  @override
  Future<UserModel> build() async {
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString('Authorization');

    if (accessToken != null) {
      final dioNotifier = ref.read(dioProvider.notifier);
      dioNotifier.updateAccessToken(accessToken);

      return await setUser();
    }

    return UserModel(userId: '', roles: []);
  }

  Future<void> handleLogin(UserLoginModel model) async {
    final dio = ref.read(dioProvider);
    final response = await dio.post('/api/v1/login', data: model.toJson());

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
        'Authorization', 'Bearer ${response.data['accessToken']}');
    await prefs.setString(
        'RefreshToken', 'Bearer ${response.data['refreshToken']}');

    final dioNotifier = ref.read(dioProvider.notifier);
    dioNotifier.updateAccessToken('Bearer ${response.data['accessToken']}');
    ref.invalidateSelf();
  }

  Future<void> handleLogout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('Authorization');
    await prefs.remove('RefreshToken');

    //여기서 서버에서 로그아웃 처리하는 로직 추가

    final dioNotifier = ref.read(dioProvider.notifier);
    dioNotifier.updateAccessToken('');
  }

  Future<UserModel> setUser() async {
    final response = await ref.read(dioProvider).get('/api/v1/users/me');
    return UserModel.fromJson(
      response.data,
    );
  }
}

final userProvider = AsyncNotifierProvider.autoDispose<UserNotifier, UserModel>(
  UserNotifier.new,
);
