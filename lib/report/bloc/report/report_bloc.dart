import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:report_repository/report_repository.dart';

part 'report_event.dart';
part 'report_state.dart';
part 'report_bloc.freezed.dart';

class ReportBloc extends Bloc<ReportEvent, ReportState> {
  ReportBloc({
    required ReportRepository reportRepository,
  })  : _reportRepository = reportRepository,
        super(const Initial()) {
    on<_Started>(_onStarted);
    on<_FilterChanged>(_onFilterChanged);
  }

  final ReportRepository _reportRepository;

  void _onFilterChanged(
    _FilterChanged event,
    Emitter<ReportState> emit,
  ) {
    emit(Loaded(reports: state.reports, filter: event.filter));
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<ReportState> emit,
  ) async {
    emit(Loading(reports: state.reports));

    try {
      final reports = await _reportRepository.getReports();
      // sort by date
      reports
          .sort((a, b) => b.report.createdAt!.compareTo(a.report.createdAt!));

      emit(Loaded(reports: reports));
    } on ReportException catch (e) {
      emit(Error(message: e.message));
    }
  }
}
