import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/login_response.dart';

class TokenService {
  final String key = 'token';
  static TokenService? manager;
  static SharedPreferences? _prefs;

  static Future<TokenService> getInstance() async {
    if (manager == null || _prefs == null) {
      manager = TokenService();
      _prefs = await SharedPreferences.getInstance();
    }
    return manager!;
  }

  Future<void> delete() async {
    await _prefs?.remove(key);
  }


  LoginResponse retrieve()  {
    final String baseUrl = dotenv.env['BASE_URL'] ?? 'default_url';
    print(baseUrl);
    String? value = _prefs?.getString(key);
    return LoginResponse.deserialize(value!);
  }


  Future<void> store(LoginResponse loginResponse) async {
    await _prefs?.setString(key, LoginResponse.serialize(loginResponse));
  }
}