// To parse this JSON data, do
//
//     final regiao = regiaoFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'regiao.g.dart';

Regiao regiaoFromJson(String str) => Regiao.fromJson(json.decode(str));

String regiaoToJson(Regiao data) => json.encode(data.toJson());

@JsonSerializable()
class Regiao {
  @JsonKey(name: "nome")
  String nome;

  Regiao({
    required this.nome,
  });

  factory Regiao.fromJson(Map<String, dynamic> json) => _$RegiaoFromJson(json);

  Map<String, dynamic> toJson() => _$RegiaoToJson(this);
}
