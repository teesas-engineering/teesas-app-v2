import '../../../../common/utils/api_result.dart';
import '../../../../common/utils/api_result_wrapper.dart';
import '../../data/dto/login_dto.dart';
import '../../data/model/login_response_model.dart';
import '../../data/source/auth_source.dart';

class AuthRepository {
  AuthRepository(this._source);

  AuthSource _source;

  Future<ApiResult<LoginResponseModel>> login(LoginDto model) async {
    return ApiResultWrapper.wrap(
      func: () => _source.login(model),
      mapper: (json) => LoginResponseModel.fromJson(json),
    );
  }
}
