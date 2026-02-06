import 'package:injectable/injectable.dart';

import '../../../../../common/utils/api_result.dart';
import '../../../../../common/utils/api_result_wrapper.dart';
import '../dto/subscription_dto.dart';
import '../source/subscription_source.dart';

@lazySingleton
class SubscriptionRepository {
  SubscriptionRepository(this._source);

  final SubscriptionSource _source;

  Future<ApiResult<SubscriptionListResponseDto>> fetchSubscriptions() async {
    return ApiResultWrapper.wrap(
      func: () => _source.getSubscriptions(),
      mapper: (data) =>
          SubscriptionListResponseDto.fromJson(data as Map<String, dynamic>),
    );
  }
}
