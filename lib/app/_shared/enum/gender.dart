import '../../../common/style_guide/style_guide.dart';

Gender? genderFromJson(dynamic v) => Gender.fromJson(v);
String? genderToJson(Gender? v) => Gender.toJson(v);
enum Gender {
  male('Male'),
  female('Female');

  final String displayName;

  const Gender(this.displayName);

  /// Serializes to API format (e.g. "MALE", "FEMALE").
  String toJsonValue() => name.toUpperCase();

  /// Parses from API string (e.g. "MALE", "FEMALE", "Male").
  static Gender? fromJson(dynamic value) {
    if (value == null) return null;
    return fromString(value as String);
  }

  static Gender? fromString(String? value) {
    if (value == null || value.isEmpty) return null;
    switch (value.toUpperCase()) {
      case 'MALE':
        return Gender.male;
      case 'FEMALE':
        return Gender.female;
      default:
        return null;
    }
  }

  static String? toJson(Gender? value) => value?.toJsonValue();

  String getAvatar() {
    switch (this) {
      case Gender.male:
        return AppAssets.maleStudent;
      case Gender.female:
        return AppAssets.femaleStudent;
    }
  }
}
