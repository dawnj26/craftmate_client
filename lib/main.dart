import 'package:craftmate_client/app.dart';
import 'package:craftmate_client/logger.dart';
import 'package:flutter/material.dart';
import 'package:log_collector/log_collector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  logger = await LogCollector.getInstance();
  logger.logInfo('Log started');

  runApp(const MyApp());
}
