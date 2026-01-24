import '../../../common/style_guide/style_guide.dart';

enum Gender {
  male('Male'),
  female('Female');

  final String displayName;

  const Gender(this.displayName);

  String getAvatar() {
    switch (this) {
      case Gender.male:
        return AppAssets.maleStudent;
      case Gender.female:
        return AppAssets.femaleStudent;
    }
  }
}
