import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_arch_templ/core/resources/data_state.dart';
import 'package:flutter_clean_arch_templ/features/home/domain/usecases/get_character.dart';
import 'package:flutter_clean_arch_templ/features/home/presentation/bloc/character/remote/remote_character_event.dart';
import 'package:flutter_clean_arch_templ/features/home/presentation/bloc/character/remote/remote_character_state.dart';

class RemoteCharactersBloc
    extends Bloc<RemoteCharactersEvent, RemoteCharactersState> {
  final GetCharacterUseCase _getCharacterUseCase;
  int _page = 1;
  bool _isLoading = false;

  RemoteCharactersBloc(this._getCharacterUseCase)
      : super(const RemoteCharactersState()) {
    on<RefreshCharacters>((event, emit) async {
      _page = 1;
      emit(state.copyWith(
        pStatus: RemoteCharactersStatus.loading,
        pCharacters: [],
        pHasMaxReached: false,
      ));
      add(GetCharacters());
    });

    on<GetCharacters>((event, emit) async {
      if (state.hasMaxReached) {
        emit(state);
      } else {
        if (!_isLoading) {
          await _getCharacters(emit);
        }
      }
    });
  }

  Future<void> _getCharacters(Emitter<RemoteCharactersState> emit) async {
    emit(state.copyWith(pStatus: RemoteCharactersStatus.loading));
    _isLoading = true;
    final _dataResult = await _getCharacterUseCase(Params(number: _page));

    if (_dataResult is DataSuccess) {
      final _characterResponse = _dataResult.data!;
      final _characters = _characterResponse.results;
      emit(state.copyWith(
          pStatus: RemoteCharactersStatus.success,
          pHasMaxReached: _characterResponse.info.pages <= _page,
          pCharacters: List.of(state.characters)..addAll(_characters)));
      _page++;
    } else {
      emit(state.copyWith(pStatus: RemoteCharactersStatus.failed));
    }
    _isLoading = false;
  }
}
