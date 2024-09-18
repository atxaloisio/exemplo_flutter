// To parse this JSON data, do
//
//     final refreshToken = refreshTokenFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'refresh_token.g.dart';

RefreshToken refreshTokenFromJson(String str) =>
    RefreshToken.fromJson(json.decode(str));

String refreshTokenToJson(RefreshToken data) => json.encode(data.toJson());

@JsonSerializable()
class RefreshToken {
  @JsonKey(name: "refreshToken")
  String refreshToken;

  RefreshToken({
    required this.refreshToken,
  });

  factory RefreshToken.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenFromJson(json);

  Map<String, dynamic> toJson() => _$RefreshTokenToJson(this);
}
