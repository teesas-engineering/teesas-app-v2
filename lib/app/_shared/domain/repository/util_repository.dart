import 'package:injectable/injectable.dart';

import '../../../../common/utils/api_result.dart';
import '../../../../common/utils/api_result_wrapper.dart';
import '../../data/dto/get_countries_dto/get_countries_country_dto.dart';
import '../../data/dto/get_courses_dto/course_dto.dart';
import '../../data/dto/get_courses_dto/get_courses_data_dto.dart';
import '../../data/dto/get_countries_dto/get_countries_data_dto.dart';
import '../../data/source/util_source/util_source.dart';

@lazySingleton
class UtilRepository {
  UtilRepository(this._source);

  final UtilSource _source;

  Future<ApiResult<List<ClassCategoryDto>>> getCourses() {
    return ApiResultWrapper.wrap(
      func: _source.getCourses,
      mapper: (data) =>
          GetCoursesDataDto.fromJson(data as Map<String, dynamic>).courses,
    );
  }

  Future<ApiResult<List<CountryDto>>> getCountries() {
    return ApiResultWrapper.wrap(
      func: _source.getCountries,
      mapper: (data) =>
          GetCountriesDto.fromJson(data as Map<String, dynamic>).countries,
    );
  }
}
