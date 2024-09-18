import 'package:dio/dio.dart';
import 'package:exemplo_flutter/models/login_request.dart';
import 'package:exemplo_flutter/models/login_response.dart';
import 'package:exemplo_flutter/models/refresh_token.dart';
import 'package:exemplo_flutter/services/repositorys/api_end_points.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/http.dart';

part 'identity_repository.g.dart';

@RestApi(baseUrl: ApiEndPoints.baseUrl)
abstract class IdentityRepository {
  factory IdentityRepository(Dio dio, {String baseUrl}) = _IdentityRepository;

  @POST('${ApiEndPoints.apiVersion}${ApiEndPoints.identityLogin}')
  Future<LoginResponse> login(@Body() LoginRequest loginRequest, @Query('useCookies') bool useCookies, @Query('useSessionCookies') bool useSessionCookies);

  @POST('${ApiEndPoints.apiVersion}${ApiEndPoints.identityRefresh}')
  Future<LoginResponse> refresh(@Body() RefreshToken refreshToken);

}