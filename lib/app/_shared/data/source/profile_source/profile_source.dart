// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../common/utils/app_config.dart';
import '../../../../../common/utils/base_dto.dart';
import '../../dto/switch_profile_dto/switch_profile_dto.dart';

part 'profile_source.g.dart';

@RestApi(baseUrl: '${AppConfig.baseUrl}/profile/')
abstract class ProfileSource {
  factory ProfileSource(Dio dio) = _ProfileSource;

  @POST('switch-profile')
  Future<BaseDto> switchProfile(@Body() SwitchProfileDto payload);

  @GET('user-profiles')
  Future<BaseDto> getUserProfiles();

  @POST('add-account')
  Future<BaseDto> addAccount();

  @POST('add-user-course')
  Future<BaseDto> addUserCourse();

  @MultiPart()
  @POST('update-profile')
  Future<BaseDto> updateProfile(
    @Part(name: 'name') String name,
    @Part(name: 'city') String city,
    @Part(name: 'date_of_birth') String dateOfBirth,
    @Part(name: 'country_id') int countryId,
    @Part(name: 'gender') String gender,
    @Part(name: 'profile_pic') MultipartFile? profilePic,
  );
}
