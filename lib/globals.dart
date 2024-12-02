import 'package:config_repository/config_repository.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:log_collector/log_collector.dart';
import 'package:shared_preferences/shared_preferences.dart';

late final LogCollector logger;
late final ConfigRepository config;
late final SharedPreferences prefs;
late final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
late final AndroidNotificationChannel channel;
