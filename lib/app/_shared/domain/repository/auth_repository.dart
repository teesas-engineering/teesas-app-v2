import 'package:injectable/injectable.dart';

import '../../../../common/utils/api_result.dart';
import '../../../../common/utils/api_result_wrapper.dart';
import '../../data/dto/forgot_password_dto/forgot_password_dto.dart';
import '../../data/dto/login_dto/login_dto.dart';
import '../../data/dto/user_dto/user_dto.dart';
import '../../data/source/auth_source/auth_source.dart';

@lazySingleton
class AuthRepository {
  AuthRepository(this._source);

  AuthSource _source;

  Future<ApiResult<UserDto>> login(LoginDto model) async {
    return ApiResultWrapper.wrap(
      func: () => _source.login(model),
      mapper: (json) => UserDto.fromJson(json),
    );
  }

  Future<ApiResult<bool>> forgotPassword(ForgotPasswordDto model) async {
    return ApiResultWrapper.wrap(
      func: () => _source.forgotPassword(model),
      mapper: (_) => true,
    );
  }
}
