import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../common/utils/api_result.dart';
import '../../../../common/utils/api_result_wrapper.dart';
import '../../data/dto/add_account_dto/add_account_request_dto.dart';
import '../../data/dto/add_user_course_dto/add_user_course_request_dto.dart';
import '../../data/dto/switch_profile_dto/switch_profile_dto.dart';
import '../../data/dto/switch_profile_dto/switch_profile_response_dto.dart';
import '../../data/dto/user_dto/get_user_profiles_response_dto.dart';
import '../../data/dto/user_dto/user_dto.dart';
import '../../data/source/profile_source/profile_source.dart';

@lazySingleton
class ProfileRepository {
  ProfileRepository(this._source);

  final ProfileSource _source;

  Future<ApiResult<SwitchProfileResponseDto>> switchProfile(
      SwitchProfileDto payload) async {
    return ApiResultWrapper.wrap(
      func: () => _source.switchProfile(payload),
      mapper: (data) =>
          SwitchProfileResponseDto.fromJson(data as Map<String, dynamic>),
    );
  }

  Future<ApiResult<List<UserDto>>> getUserProfiles() async {
    return ApiResultWrapper.wrap(
      func: _source.getUserProfiles,
      mapper: (data) =>
          GetUserProfilesResponseDto.fromJson(data as Map<String, dynamic>).user,
    );
  }

  Future<ApiResult<bool>> addAccount(AddAccountRequestDto payload) async {
    return ApiResultWrapper.wrap(
      func: () => _source.addAccount(payload),
      mapper: (_) => true,
    );
  }

  Future<ApiResult<bool>> addUserCourse(
      AddUserCourseRequestDto payload) async {
    return ApiResultWrapper.wrap(
      func: () => _source.addUserCourse(payload),
      mapper: (_) => true,
    );
  }

  Future<ApiResult<bool>> updateProfile({
    required String name,
    required String city,
    required String dateOfBirth,
    required int countryId,
    required String gender,
    MultipartFile? profilePic,
  }) async {
    return ApiResultWrapper.wrap(
      func: () => _source.updateProfile(
        name,
        city,
        dateOfBirth,
        countryId,
        gender,
        profilePic,
      ),
      mapper: (_) => true,
    );
  }
}
