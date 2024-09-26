import 'package:craftmate_client/app.dart';
import 'package:craftmate_client/bootstrap.dart';
import 'package:craftmate_client/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:log_collector/log_collector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  logger = await LogCollector.getInstance();

  logger.info('Loading environment variables.');
  await dotenv.load();

  logger.info('Starting the app');
  bootstrap(() => const MyApp());
}
