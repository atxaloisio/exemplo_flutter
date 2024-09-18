import 'package:dio/dio.dart';
import 'package:exemplo_flutter/models/login_request.dart';
import 'package:exemplo_flutter/models/login_response.dart';
import 'package:exemplo_flutter/models/refresh_token.dart';
import 'package:exemplo_flutter/services/repositorys/identity_repository.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AuthService {
  final _repository = IdentityRepository(Dio(BaseOptions(
        baseUrl: dotenv.env['BASE_URL'] ?? 'http://localhost:5164/',
        connectTimeout: const Duration(milliseconds: 5000) ,
        receiveTimeout: const Duration(milliseconds: 3000) ,
      ), ));
  Future<LoginResponse> login(String email, String password) async {
    LoginRequest loginRequest = LoginRequest(email: email, password: password);
    LoginResponse response = await _repository.login(loginRequest, false, false);
    // print(LoginResponse.serialize(response));
    return response;
  }
  Future<LoginResponse> refresh(String token) async {
    RefreshToken refreshToken = RefreshToken(refreshToken: token);
    LoginResponse response = await _repository.refresh(refreshToken);
    // print(LoginResponse.serialize(response));
    return response;
  }
}