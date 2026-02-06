import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../common/utils/app_config.dart';
import '../../../../../common/utils/base_dto.dart';

part 'subscription_source.g.dart';

@RestApi(baseUrl: '${AppConfig.baseUrl}/')
abstract class SubscriptionSource {
  factory SubscriptionSource(Dio dio) = _SubscriptionSource;

  @GET('v1/subscriptions/list')
  Future<BaseDto> getSubscriptions();
}
