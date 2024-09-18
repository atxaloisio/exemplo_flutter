import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiEndPoints {
  static const baseUrl = 'http://localhost:5164/';

  static String getBaseUrl() {
    return dotenv.env['BASE_URL'] ?? 'http://localhost:5164/';
  }
  static const String apiVersion = '/v1';

  static String getEndPointByVersion(String endPoint)
  {
    return ('$apiVersion $endPoint');
  }

  // #region EndPoints Identity
  static const String identityRegister = '/identity/register';
  static const String identityLogin = '/identity/login';
  static const String identityRefresh = '/identity/refresh';
  static const String identityConfirmEmail = '/identity/confirmEmail';
  static const String identityResendConfirmationEmail = '/identity/resendConfirmationEmail';
  static const String identityForgotPassword = '/identity/forgotPassword';
  static const String identityResetPassword = '/identity/resetPassword';
  static const String identityManage2fa = '/identity/manage/2fa';
  static const String identityManageInfo = '/identity/manage/info';
  static const String identityLogout = '/identity/logout';
  static const String identityRoles = '/identity/roles';
  // #endregion
  // #region EndPoint Negocio
  static const String cadeiras = '/cadeiras';
  static const String comentarios = '/Comentarios';
  static const String conexoesNegocio = '/conexoesnegocio';
  static const String convites = '/Convites';
  static const String empresas = '/Empresas';
  static const String fotoMembros = '/fotomembros';
  static const String logoEmpresas = '/logoempresas';
  static const String membros = '/membros';
  static const String posts = '/Posts';
  static const String regioes = '/Regioes';
  static const String respostas = '/Respostas';
  // #endregion

}

