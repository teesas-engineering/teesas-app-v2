import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConstant {
  AppConstant._();

  static String appName = 'Teesas';
  static String apiKey = dotenv.get('apiKey');
  static String flutterWaveAuthToken = dotenv.get('flutterWaveAuthToken');
}
