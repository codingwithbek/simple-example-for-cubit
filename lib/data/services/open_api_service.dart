
import 'package:dio/dio.dart';
import 'package:exam_five/data/models/nbu_model.dart';

import 'open_api_client.dart';

class OpenApiService {
  OpenApiService({required OpenApiClient openApiClient})
      : _openApiClient = openApiClient;

  final OpenApiClient _openApiClient;

  Future<List<NbuModel>> getAllData() async {
    try {
      Response response =
          await _openApiClient.dio.get(_openApiClient.dio.options.baseUrl);
      if (response.statusCode! <= 200 || response.statusCode! <= 299) {
        return (response.data as List?)
                ?.map((category) => NbuModel.fromJson(category))
                .toList() ??
            [];
      } else {
        throw Exception();
      }
    } on DioError catch (e) {
      throw Exception(e.toString());
    }
  }

  
}
