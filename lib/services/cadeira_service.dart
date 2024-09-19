import 'package:exemplo_flutter/services/dio_service.dart';
import 'package:exemplo_flutter/services/repositorys/cadeira_repository.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class CadeiraService {
  final _repository = CadeiraRepository(DioService.buildDioClient(dotenv.env['BASE_URL'] ?? 'http://localhost:5164/'));

}