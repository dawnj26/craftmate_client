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
  }

  final ReportRepository _reportRepository;

  Future<void> _onSubmitted(
    _Submitted event,
    Emitter<ReportModalState> emit,
  ) async {
    emit(
      ReportModalState.loading(
        selectedReason: state.selectedReason,
        description: state.description,
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
      );
      emit(
        ReportModalState.success(
          selectedReason: state.selectedReason,
          description: state.description,
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
