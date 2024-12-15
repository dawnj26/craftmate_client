import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:report_repository/report_repository.dart';

part 'report_event.dart';
part 'report_state.dart';
part 'report_bloc.freezed.dart';

class ReportModalBloc extends Bloc<ReportModalEvent, ReportModalState> {
  ReportModalBloc({
    required ReportRepository reportRepository,
  })  : _reportRepository = reportRepository,
        super(const ReportModalState.initial()) {
    on<_Started>((event, emit) {});

    on<_ReasonSelected>((event, emit) {
      emit(state.copyWith(selectedReason: event.reason));
    });

    on<_DescriptionChanged>((event, emit) {
      emit(state.copyWith(description: event.description));
    });
    on<_Submitted>(_onSubmitted);
    on<_PhotoAdded>(_onPhotoAdded);
    on<_PhotoRemoved>(_onPhotoRemoved);
  }

  final ReportRepository _reportRepository;

  void _onPhotoAdded(_PhotoAdded event, Emitter<ReportModalState> emit) {
    emit(
      Initial(
        selectedReason: state.selectedReason,
        description: state.description,
        imagesPath: [...state.imagesPath, ...event.imagesPath],
      ),
    );
  }

  void _onPhotoRemoved(_PhotoRemoved event, Emitter<ReportModalState> emit) {
    final newImages = [...state.imagesPath]..removeAt(event.index);

    emit(
      Initial(
        selectedReason: state.selectedReason,
        description: state.description,
        imagesPath: newImages,
      ),
    );
  }

  Future<void> _onSubmitted(
    _Submitted event,
    Emitter<ReportModalState> emit,
  ) async {
    emit(
      ReportModalState.loading(
        selectedReason: state.selectedReason,
        description: state.description,
        imagesPath: state.imagesPath,
      ),
    );
    try {
      await _reportRepository.report(
        Report(
          reason: state.selectedReason!,
          description: state.description,
          reporterId: event.reporterId,
          reportedId: event.reportedId,
          createdAt: DateTime.now(),
        ),
        state.imagesPath,
      );
      emit(
        ReportModalState.success(
          selectedReason: state.selectedReason,
          description: state.description,
          imagesPath: state.imagesPath,
        ),
      );
    } on ReportException catch (e) {
      emit(
        ReportModalState.failure(
          message: e.message,
          selectedReason: state.selectedReason,
          description: state.description,
        ),
      );
    }
  }
}
