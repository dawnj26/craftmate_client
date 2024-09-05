import 'dart:io';

import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

class LogCollector {
  late Logger _logger;

  static Future<LogCollector> getInstance() async {
    final instance = LogCollector();
    await instance._init();

    return instance;
  }

  Future<void> _init() async {
    if (kReleaseMode) {
      var directory = await getExternalStorageDirectory();
      directory ??= await getApplicationDocumentsDirectory();
      // final currentDate = DateTime.now();
      // final formatter = DateFormat('yyyy-MM-dd_HH-mm-ss');
      final fileName = 'craftmate_log.txt';

      final logFile = File('${directory.path}/$fileName');

      _logger = Logger(
        output: FileOutput(file: logFile),
        printer: PrettyPrinter(
          methodCount: 0,
          errorMethodCount: 5,
          lineLength: 50,
          colors: false,
          printEmojis: false,
          dateTimeFormat: _dateTimeFormat,
        ),
      );
    } else {
      _logger = Logger(
        printer: PrettyPrinter(
          dateTimeFormat: _dateTimeFormat,
        ),
      );
    }
  }

  String _dateTimeFormat(DateTime time) {
    final formatter = DateFormat('yyyy-MM-dd_HH:mm:ss');
    return formatter.format(time);
  }

  void info(dynamic message) {
    _logger.i(message);
  }

  void warning(dynamic message) {
    _logger.w(message);
  }

  void error(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }

  void debug(dynamic message) {
    _logger.d(message);
  }
}
