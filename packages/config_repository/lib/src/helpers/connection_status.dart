import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectionStatus {
  ConnectionStatus();

  bool hasConnection = false;

  final StreamController<bool> _connectionChangeController =
      StreamController.broadcast();
  final _connectivity = Connectivity();

  Stream<bool> get connectionChange => _connectionChangeController.stream;

  void init() {
    _connectivity.onConnectivityChanged.listen((result) {
      checkConnection();
    });
    checkConnection();
  }

  Future<bool> checkConnection() async {
    bool previousConnection = hasConnection;

    try {
      final res = await InternetAddress.lookup('google.com');
      hasConnection = res.isNotEmpty && res[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      hasConnection = false;
    }

    if (previousConnection != hasConnection) {
      _connectionChangeController.add(hasConnection);
    }

    return hasConnection;
  }
}
