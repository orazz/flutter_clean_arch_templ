import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:clean_arch_templ/features/home/data/data_source/remote/api_service.dart';
import 'package:clean_arch_templ/features/home/data/repository/character_repository_impl.dart';
import 'package:clean_arch_templ/features/home/domain/repository/character_repository.dart';
import 'package:clean_arch_templ/features/home/domain/usecases/get_character.dart';
import 'package:clean_arch_templ/features/home/presentation/bloc/character/remote/remote_character_bloc.dart';
import 'package:clean_arch_templ/features/home/presentation/bloc/theme_mode/theme_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {

  sl.registerSingleton<ThemeBloc>(ThemeBloc());

  // Dio
  sl.registerSingleton<Dio>(Dio());

  // Dependencies
  sl.registerSingleton<NewsApiService>(NewsApiService(sl()));

  sl.registerSingleton<CharacterRepository>(
    CharacterRepositoryImpl(sl())
  );
  
  //UseCases
  sl.registerSingleton<GetCharacterUseCase>(
    GetCharacterUseCase(sl())
  );

  //Blocs
  sl.registerFactory<RemoteCharactersBloc>(
    ()=> RemoteCharactersBloc(sl())
  );
}