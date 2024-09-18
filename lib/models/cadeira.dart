import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'cadeira.g.dart';

Cadeira cadeiraFromJson(String str) => Cadeira.fromJson(json.decode(str));

String cadeiraToJson(Cadeira data) => json.encode(data.toJson());

@JsonSerializable()
class Cadeira {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "nome")
  String nome;

  Cadeira({
    required this.id,
    required this.nome,
  });

  factory Cadeira.fromJson(Map<String, dynamic> json) => _$CadeiraFromJson(json);

  Map<String, dynamic> toJson() => _$CadeiraToJson(this);
}
