import 'package:config_repository/config_repository.dart';
import 'package:report_repository/report_repository.dart';
import 'package:user_repository/user_repository.dart';

abstract class IReportRepository {
  Future<void> report(Report report);
  Future<List<QueryReport>> getReports();
  Future<QueryReport> getReportById(String id); // Add new method
  Future<void> dismiss(String id);
}

class ReportRepository implements IReportRepository {
  static const _collection = 'reports';
  final ConfigRepository _config;
  final UserRepository _userRepository;

  const ReportRepository(this._config, this._userRepository);

  @override
  Future<void> report(Report report) async {
    try {
      final reportsRef = _config.db.collection(_collection);

      await reportsRef.add(report.toJson());
    } catch (e) {
      throw ReportException(
        'Failed to submit report: ${e.toString()}',
      );
    }
  }

  @override
  Future<List<QueryReport>> getReports() async {
    try {
      final reportsRef = _config.db.collection(_collection);
      final snapshot = await reportsRef.get();

      final reports = <QueryReport>[];

      for (final doc in snapshot.docs) {
        final data = doc.data();
        final report = Report.fromJson(data);
        final reporter = await _userRepository.getUserById(data['reporterId']);
        final reported = await _userRepository.getUserById(data['reportedId']);

        reports.add(QueryReport(
          id: doc.id,
          report: report,
          reporter: reporter,
          reported: reported,
        ));
      }

      return reports;
    } catch (e) {
      throw ReportException(
        'Failed to get reports: ${e.toString()}',
      );
    }
  }

  @override
  Future<QueryReport> getReportById(String id) async {
    try {
      final reportDoc = await _config.db.collection(_collection).doc(id).get();

      if (!reportDoc.exists) {
        throw ReportException('Report not found');
      }

      final data = reportDoc.data();

      if (data == null) {
        throw ReportException('Report data is empty');
      }

      final report = Report.fromJson(data);
      final reporter = await _userRepository.getUserById(data['reporterId']);
      final reported = await _userRepository.getUserById(data['reportedId']);

      return QueryReport(
        id: reportDoc.id,
        report: report,
        reporter: reporter,
        reported: reported,
      );
    } catch (e) {
      throw ReportException(
        'Failed to get report: ${e.toString()}',
      );
    }
  }

  @override
  Future<void> dismiss(String id) async {
    try {
      final reportRef = _config.db.collection(_collection).doc(id);
      await reportRef.update({'isReviewed': true});
    } catch (e) {
      throw ReportException(
        'Failed to dismiss report: ${e.toString()}',
      );
    }
  }
}
