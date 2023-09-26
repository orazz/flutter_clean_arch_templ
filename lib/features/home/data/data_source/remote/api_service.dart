import 'package:clean_arch_templ/core/constants/constants.dart';
import 'package:clean_arch_templ/features/home/data/models/character.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl:newsAPIBaseURL)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;
  
  @GET('/character')
  Future<HttpResponse<CharacterResponse>> getCharacters(
    @Query("page") int page,
  );
}