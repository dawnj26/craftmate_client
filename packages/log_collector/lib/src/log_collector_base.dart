import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class LogCollector {
  late Logger _logger;

  static Future<LogCollector> getInstance() async {
    final instance = LogCollector();
    await instance._init();

    return instance;
  }

  Future<void> _init() async {
    _logger = Logger();
  }

  void info(dynamic message) {
    if (kReleaseMode) {
      return;
    }

    _logger.i(message);
  }

  void warning(dynamic message) {
    if (kReleaseMode) {
      return;
    }
    _logger.w(message);
  }

  void error(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    if (kReleaseMode) {
      return;
    }
    _logger.e(message, error: error, stackTrace: stackTrace);
  }

  void debug(dynamic message) {
    if (kReleaseMode) {
      return;
    }
    _logger.d(message);
  }
}
