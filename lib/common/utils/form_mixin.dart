import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final emailAddressRegex = RegExp(
  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
);

mixin FormMixin {
  /// Checks if a field is required (not null or empty).
  String? isRequired(String? value) {
    return (value?.trim().isEmpty ?? true) ? 'This field is required' : null;
  }

  /// Denies whitespace in text fields.
  TextInputFormatter denyWhiteSpaceInTextField() =>
      FilteringTextInputFormatter.deny(RegExp(r'\s'));

  /// Denies digits in text fields.
  TextInputFormatter denyDigitsInputFormatter() {
    final digitRegex = RegExp(r'\d');
    return TextInputFormatter.withFunction((oldValue, newValue) {
      final filteredText = newValue.text.replaceAll(digitRegex, '');
      return TextEditingValue(
        text: filteredText,
        selection: TextSelection.collapsed(offset: filteredText.length),
      );
    });
  }

  /// Allows only numeric input.
  TextInputFormatter numbersOnlyInTextField() =>
      FilteringTextInputFormatter.digitsOnly;

  /// Validates email format.
  String? isValidEmailAddress(String? value) {
    if (value?.trim().isEmpty ?? true) {
      return 'This field is required';
    }
    final emailRegex = RegExp(
      r"^[\w!#$%&'*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]+$",
    );
    if (!emailRegex.hasMatch(value!)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  /// Normalizes a phone number or email string.
  String getActualPhoneNumberOrEmail(String input) {
    if (isValidEmailAddress(input) == null) {
      return input;
    }

    var number = input.startsWith('+') ? input.substring(1) : input;
    if (number.startsWith('234')) {
      number = number.replaceFirst('234', '');
    } else if (number.startsWith('0')) {
      number = number.replaceFirst('0', '');
    }
    return '+234$number';
  }

  /// Checks if a string contains only digits.
  bool allInputsAreNumbers(String input) {
    if (input.isEmpty) {
      return false;
    }
    return RegExp(r'^\d+$').hasMatch(input);
  }

  /// Validates phone number format.
  String? phoneValid(String? value) {
    if (value?.trim().isEmpty ?? true) {
      return 'This field is required';
    }
    // Nigerian phone number validation (10-11 digits after country code)
    final phoneRegex = RegExp(r'^\+?234[0-9]{10}$|^0?[0-9]{10}$');
    if (!phoneRegex.hasMatch(value!.replaceAll(RegExp(r'[\s-]'), ''))) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  /// Validates and saves form on submit.
  bool validateAndSaveOnSubmit(BuildContext context) {
    final form = Form.of(context);
    if (!form.validate()) {
      return false;
    }
    form.save();
    return true;
  }
}
