// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../common/utils/app_config.dart';
import '../../../../../common/utils/base_dto.dart';

part 'util_source.g.dart';

@RestApi(baseUrl: '${AppConfig.baseUrl}/utils/')
abstract class UtilSource {
  factory UtilSource(Dio dio) = _UtilSource;

  @GET('get-courses')
  Future<BaseDto> getCourses();

  @GET('get-countries')
  Future<BaseDto> getCountries();
}
