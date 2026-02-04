import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConstant {
  AppConstant._();

  static String appName = 'Teesas';
  static String apiKey = dotenv.get('apiKey');
  static String flutterWaveAuthToken = dotenv.get('flutterWaveAuthToken');
  static String defaultCountryFlag = 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NG.svg';

  /// Returns a stable device identifier: Android ID on Android, identifierForVendor on iOS.
  static Future<String> deviceId() async {
    final plugin = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      final androidInfo = await plugin.androidInfo;
      return androidInfo.id;
    }
    if (Platform.isIOS) {
      final iosInfo = await plugin.iosInfo;
      return iosInfo.identifierForVendor ?? '';
    }
    return '';
  }
}
