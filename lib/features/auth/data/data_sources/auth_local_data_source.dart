import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalDataSource {
  Future<void> saveToken(String token);
  Future<String?> getToken();
  Future<void> clearToken();
  Future<bool> isLoggedIn();
  Future<void> saveUserId(int userId);
  Future<int?> getUserId();
  Future<void> clearUserId();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  static const _tokenKey = 'token';
  static const _userIdKey = 'user_id';

  Future<SharedPreferences> get _prefs async =>
      await SharedPreferences.getInstance();
  @override
  Future<void> saveToken(String token) async {
    final prefs = await _prefs;
    await prefs.setString(_tokenKey, token);
  }

  @override
  Future<String?> getToken() async {
    final prefs = await _prefs;
    return prefs.getString(_tokenKey);
  }

  @override
  Future<bool> isLoggedIn() async {
    final token = await getToken();
    if (token == null || token.trim().isEmpty) {
      return false;
    }
    return true;
  }

  @override
  Future<void> clearToken() async {
    final prefs = await _prefs;
    await prefs.remove(_tokenKey);
  }

  @override
  Future<void> saveUserId(int userId) async {
    final prefs = await _prefs;
    await prefs.setInt(_userIdKey, userId);
  }

  @override
  Future<int?> getUserId() async {
    final prefs = await _prefs;
    return prefs.getInt(_userIdKey);
  }

  @override
  Future<void> clearUserId() async {
    final prefs = await _prefs;
    await prefs.remove(_userIdKey);
  }
}
