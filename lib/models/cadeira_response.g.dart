// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadeira_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CadeiraResponse _$CadeiraResponseFromJson(Map<String, dynamic> json) =>
    CadeiraResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => Cadeira.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$CadeiraResponseToJson(CadeiraResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };
