import 'package:flutter/foundation.dart';

class Logger {
  static bool? enabled;
  final String name;
  Logger(this.name);

  bool get enablePrint => enabled ?? kDebugMode;

  void log(dynamic value) {
    if (!enablePrint) return;
    debugPrint('WalletConnectSDK|$name-> $value');
  }

  void warning(dynamic value) {
    if (!enablePrint) return;
    debugPrint('----------------WalletConnectSDK Warning----------------');
    debugPrint('\n$name-> $value\n');
    debugPrint('-----------------------------------------------------');
  }
}
