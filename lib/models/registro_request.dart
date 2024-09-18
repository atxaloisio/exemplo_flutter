import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'registro_request.g.dart';

RegistroRequest registroRequestFromJson(String str) =>
    RegistroRequest.fromJson(json.decode(str));

String registroRequestToJson(RegistroRequest data) =>
    json.encode(data.toJson());

@JsonSerializable()
class RegistroRequest {
  @JsonKey(name: "email")
  String email;
  @JsonKey(name: "password")
  String password;
  @JsonKey(name: "conviteId")
  int conviteId;

  RegistroRequest({
    required this.email,
    required this.password,
    required this.conviteId,
  });

  factory RegistroRequest.fromJson(Map<String, dynamic> json) =>
      _$RegistroRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RegistroRequestToJson(this);
}
