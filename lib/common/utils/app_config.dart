
enum AppEnvironment { prod, stagging }

class AppConfig {
  AppConfig._();
  static AppEnvironment environment = AppEnvironment.stagging;
  static const  baseUrl = 'https://api-teesas.teesas.com/v1';
  static bool get isLive => environment == AppEnvironment.prod;
  static int connectionTimeout = 20;
  static int otpCountDownLimitInSeconds = 60;
  static int minimumTransferAmount = 500;
  static int minimumWalletFundAmount = 500;
}
