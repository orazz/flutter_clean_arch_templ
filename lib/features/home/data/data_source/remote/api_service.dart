import 'package:flutter_clean_arch_templ/core/constants/constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl:newsAPIBaseURL)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;
  
  @GET('/character')
  Future<HttpResponse<String>> getCharacters(
    @Query("page") int page,
  );
}