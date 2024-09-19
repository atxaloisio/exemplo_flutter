// To parse this JSON data, do
//
//     final cadeiraPagedResponse = cadeiraPagedResponseFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

import 'cadeira.dart';

part 'cadeira_paged_response.g.dart';

CadeiraPagedResponse cadeiraPagedResponseFromJson(String str) =>
    CadeiraPagedResponse.fromJson(json.decode(str));

@JsonSerializable()
class CadeiraPagedResponse {
  @JsonKey(name: "data")
  List<Cadeira> data;
  @JsonKey(name: "message")
  String? message;
  @JsonKey(name: "currentPage")
  int currentPage;
  @JsonKey(name: "totalPages")
  int totalPages;
  @JsonKey(name: "pageSize")
  int pageSize;
  @JsonKey(name: "totalCount")
  int totalCount;

  CadeiraPagedResponse({
    required this.data,
    required this.message,
    required this.currentPage,
    required this.totalPages,
    required this.pageSize,
    required this.totalCount,
  });

  factory CadeiraPagedResponse.fromJson(Map<String, dynamic> json) =>
      _$CadeiraPagedResponseFromJson(json);
}


