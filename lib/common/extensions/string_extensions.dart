import 'dart:ui';

import 'num_extension.dart';

extension StringExtensions on String {
  String capitalizeFirst() {
    if (isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + substring(1);
  }

  String capitalizeFirstWord() {
    if (trim().isEmpty) {
      return this;
    }

    final words = split(' ');
    if (words.isEmpty) {
      return this;
    }

    final firstWord = words.first;
    final capitalizedFirstWord =
        '${firstWord[0].toUpperCase()}${firstWord.substring(1)}';

    return [capitalizedFirstWord, ...words.skip(1)].join(' ');
  }
}
