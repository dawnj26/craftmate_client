import 'package:bloc/bloc.dart';
import 'package:chat_repository/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:report_repository/report_repository.dart';
import 'package:shop_repository/shop_repository.dart';
import 'package:user_repository/user_repository.dart';

part 'report_review_event.dart';
part 'report_review_state.dart';
part 'report_review_bloc.freezed.dart';

class ReportReviewBloc extends Bloc<ReportReviewEvent, ReportReviewState> {
  ReportReviewBloc({
    required ReportRepository reportRepository,
    required UserRepository userRepository,
    required ChatRepository chatRepository,
    required ShopRepository shopRepository,
  })  : _shopRepository = shopRepository,
        _chatRepository = chatRepository,
        _userRepository = userRepository,
        _reportRepository = reportRepository,
        super(const Initial()) {
    on<_Started>(_onStarted);
    on<_DismissReport>(_onDismissReport);
    on<_BanUser>(_onBanUser);
    on<_UnbanUser>(_onUnbanUser);
  }

  final ReportRepository _reportRepository;
  final UserRepository _userRepository;
  final ChatRepository _chatRepository;
  final ShopRepository _shopRepository;

  Future<void> _onUnbanUser(
    _UnbanUser event,
    Emitter<ReportReviewState> emit,
  ) async {
    emit(Dismissing(query: state.query));

    try {
      await _userRepository.unbanUser(state.query.reported.id);
      await _reportRepository.dismiss(state.query.id);
      await _chatRepository.restoreAllChats(state.query.reported.id);
      await _shopRepository.restoreAllUserListings(state.query.reported.id);

      emit(Unbanned(query: state.query));
    } on UserException catch (e) {
      emit(Error(message: e.message, query: state.query));
    }
  }

  Future<void> _onBanUser(
    _BanUser event,
    Emitter<ReportReviewState> emit,
  ) async {
    emit(Dismissing(query: state.query));

    try {
      await _userRepository.banUser(state.query.reported.id);
      await _reportRepository.dismiss(state.query.id);
      await _chatRepository.deleteAllChats(state.query.reported.id);
      await _shopRepository.deleteAllUserListings(state.query.reported.id);

      emit(Banned(query: state.query));
    } on UserException catch (e) {
      emit(Error(message: e.message, query: state.query));
    }
  }

  Future<void> _onDismissReport(
    _DismissReport event,
    Emitter<ReportReviewState> emit,
  ) async {
    emit(Dismissing(query: state.query));

    try {
      await _reportRepository.dismiss(state.query.id);

      emit(Dismissed(query: state.query));
    } on ReportException catch (e) {
      emit(Error(message: e.message, query: state.query));
    }
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<ReportReviewState> emit,
  ) async {
    emit(const Loading());

    try {
      final report = await _reportRepository.getReportById(event.reportId);

      emit(Loaded(query: report));
    } on ReportException catch (e) {
      emit(Error(message: e.message));
    }
  }
}
