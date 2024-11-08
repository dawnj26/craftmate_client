import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:user_repository/user_repository.dart';

part 'edit_bio_event.dart';
part 'edit_bio_state.dart';
part 'edit_bio_bloc.freezed.dart';

EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}

class EditBioBloc extends Bloc<EditBioEvent, EditBioState> {
  EditBioBloc({
    required UserRepository userRepo,
    required String bio,
  })  : _userRepo = userRepo,
        _bio = bio,
        super(const Initial()) {
    on<_BioChanged>(
      _onBioChanged,
      transformer: debounce(const Duration(milliseconds: 300)),
    );
    on<_BioSaved>(_onBioSaved);
  }

  final UserRepository _userRepo;
  final String _bio;

  Future<void> _onBioSaved(_BioSaved event, Emitter<EditBioState> emit) async {
    emit(
      Saving(
        bio: state.bio,
        isBioChanged: state.isBioChanged,
      ),
    );

    try {
      final bio = state.bio.trim().isEmpty ? null : state.bio.trim();
      final user = await _userRepo.updateUserBio(bio);

      emit(Saved(user: user, bio: state.bio, isBioChanged: state.isBioChanged));
    } on UserException catch (e) {
      emit(
        Error(
          message: e.message,
          bio: state.bio,
          isBioChanged: state.isBioChanged,
        ),
      );
    }
  }

  void _onBioChanged(_BioChanged event, Emitter<EditBioState> emit) {
    final isChanged = event.bio != _bio;

    emit(Initial(bio: event.bio, isBioChanged: isChanged));
  }
}
