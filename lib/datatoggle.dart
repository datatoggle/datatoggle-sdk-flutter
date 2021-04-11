import 'dart:async';

import 'package:datatoggle/analytics.dart';
import 'package:flutter/services.dart';

import 'destination.dart';

class Datatoggle {
  static const MethodChannel _channel = const MethodChannel('datatoggle');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Analytics? _instance;
  static Analytics get instance {
    Analytics? currentInstance = _instance;
    if (currentInstance != null) {
      return currentInstance;
    } else {
      throw StateError("Datatoggle.instance should not be called before Datatoggle.init()");
    }
  }

  // async so we can make call platform specific (which are)
  static Future<void> init(String apiKey, List<Destination> destinations) async {
    _instance = Analytics(destinations);
  }
}
