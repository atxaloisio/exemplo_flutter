// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registro_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegistroRequest _$RegistroRequestFromJson(Map<String, dynamic> json) =>
    RegistroRequest(
      email: json['email'] as String,
      password: json['password'] as String,
      conviteId: (json['conviteId'] as num).toInt(),
    );

Map<String, dynamic> _$RegistroRequestToJson(RegistroRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'conviteId': instance.conviteId,
    };
