import 'package:craftmate_client/app.dart';
import 'package:craftmate_client/bootstrap.dart';
import 'package:flutter/widgets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bootstrap(() => const MyApp());
}
