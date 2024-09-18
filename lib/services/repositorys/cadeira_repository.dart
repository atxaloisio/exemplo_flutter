import 'package:dio/dio.dart';
import 'package:exemplo_flutter/models/cadeira.dart';
import 'package:exemplo_flutter/models/cadeira_paged_response.dart';
import 'package:exemplo_flutter/services/repositorys/api_end_points.dart';
import 'package:retrofit/retrofit.dart';

import 'package:retrofit/http.dart';

import '../../models/cadeira_response.dart';

part 'cadeira_repository.g.dart';

@RestApi(baseUrl: ApiEndPoints.baseUrl)
abstract class CadeiraRepository {
  factory CadeiraRepository(Dio dio, {String baseUrl}) = _CadeiraRepository;

  @GET('${ApiEndPoints.apiVersion}${ApiEndPoints.cadeiras}')
  Future<CadeiraPagedResponse> getAllCadeiras(@Query('pageNumber') int pageNumber,@Query('pageSize') int pageSize);

  @GET('${ApiEndPoints.apiVersion}${ApiEndPoints.cadeiras}/{id}')
  Future<CadeiraResponse> getCadeiraById(@Path('id') int id);

  @GET('${ApiEndPoints.apiVersion}${ApiEndPoints.cadeiras}/{membroId}/cadeira-membro')
  Future<CadeiraResponse> getCadeiraByMembro(@Path('membroId') int membroId);

  @GET('${ApiEndPoints.apiVersion}${ApiEndPoints.cadeiras}/{regiaoId}/cadeirasvazias')
  Future<CadeiraPagedResponse> getCadeirasVaziasByRegiao(@Path('regiaoId') int regiaoId, @Query('pageNumber') int pageNumber, @Query('pageSize') int pageSize);

  @POST('${ApiEndPoints.apiVersion}${ApiEndPoints.cadeiras}')
  Future<CadeiraResponse> createCadeira(@Body() Cadeira cadeira);

  @PUT('${ApiEndPoints.apiVersion}${ApiEndPoints.cadeiras}/{id}')
  Future<CadeiraResponse> updateCadeira(@Path('id') int id, @Body() Cadeira cadeira);

  @DELETE('${ApiEndPoints.apiVersion}${ApiEndPoints.cadeiras}/{id}')
  Future<CadeiraResponse> deleteCadeira(@Path('id') int id);
}