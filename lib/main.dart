import 'package:craftmate_client/app.dart';
import 'package:craftmate_client/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:log_collector/log_collector.dart';

void main() async {
  logger = await LogCollector.getInstance();

  logger.info('Loading environment variables.');
  await dotenv.load();

  logger.info('Starting the app');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
