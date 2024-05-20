class UserLoginModel {
  String userId;
  String password;

  UserLoginModel({required this.userId, required this.password});

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'password': password,
    };
  }
}
