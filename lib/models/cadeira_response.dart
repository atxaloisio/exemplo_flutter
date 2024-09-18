import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

import 'cadeira.dart';

part 'cadeira_response.g.dart';

CadeiraResponse cadeiraResponseFromJson(String str) =>
    CadeiraResponse.fromJson(json.decode(str));

@JsonSerializable()
class CadeiraResponse {
  @JsonKey(name: "data")
  List<Cadeira> data;
  @JsonKey(name: "message")
  String message;

  CadeiraResponse({
    required this.data,
    required this.message
  });

  factory CadeiraResponse.fromJson(Map<String, dynamic> json) =>
      _$CadeiraResponseFromJson(json);
}
