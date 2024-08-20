import 'package:craftmate_client/app.dart';
import 'package:craftmate_client/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:log_collector/log_collector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  logger = await LogCollector.getInstance();

  logger.logInfo('Loading enviroment variables.');
  await dotenv.load();

  logger.logInfo('Starting the app');
  runApp(const MyApp());
}
