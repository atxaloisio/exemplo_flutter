import 'dart:convert';

class LoginResponse {
  String? tokenType;
  String? accessToken;
  int? expiresIn;
  DateTime? expiresDate;
  String? refreshToken;

  LoginResponse({this.tokenType, this.accessToken, this.expiresIn, this.refreshToken});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    tokenType = json['tokenType'];
    accessToken = json['accessToken'];
    expiresIn = json['expiresIn'];
    refreshToken = json['refreshToken'];
    expiresDate = json['expiresDate'] == null ? null : DateTime.parse(json['expiresDate'] as String);
    if ((json['expiresDate'] == null) && (json['expiresIn'] != null)) {
      _calcExpiresDate();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['tokenType'] = tokenType;
    data['accessToken'] = accessToken;
    data['expiresIn'] = expiresIn;
    data['refreshToken'] = refreshToken;
    data['expiresDate'] = expiresDate?.toIso8601String();
    return data;
  }

  void _calcExpiresDate() {
    int seconds = this.expiresIn??0;
    int minutes = (seconds / 60) as int;
    this.expiresDate = DateTime.now().add(Duration(minutes: minutes));
  }

  bool isValidToken() {
    return DateTime.now().isBefore(expiresDate!);
  }

  static String serialize(LoginResponse model) => json.encode(model.toJson());

  static LoginResponse deserialize(String json) => LoginResponse.fromJson(jsonDecode(json));
}
