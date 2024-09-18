// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadeira_paged_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CadeiraPagedResponse _$CadeiraPagedResponseFromJson(
        Map<String, dynamic> json) =>
    CadeiraPagedResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => Cadeira.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String,
      currentPage: (json['currentPage'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      totalCount: (json['totalCount'] as num).toInt(),
    );

Map<String, dynamic> _$CadeiraPagedResponseToJson(
        CadeiraPagedResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
    };
