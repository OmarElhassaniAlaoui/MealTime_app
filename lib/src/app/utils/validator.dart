import 'package:meal_time_app/src/app/resources/strings_manager.dart';

class FormValidatorHelper {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return StringsManager.emailRequired;
    }
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) {
      return StringsManager.invalidEmail;
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return StringsManager.passwordRequired;
    }
    if (value.length < 8) {
      return StringsManager.passwordLength;
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return StringsManager.passwordUppercase;
    }
    if (!value.contains(RegExp(r'[a-z]'))) {
      return StringsManager.passwordLowercase;
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return StringsManager.passwordNumber;
    }
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return StringsManager.passwordSpecialChar;
    }
    return null;
  }

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return StringsManager.nameRequired;
    }
    final nameRegex = RegExp(r'^[a-zA-Z ]+$');
    if (!nameRegex.hasMatch(value)) {
      return StringsManager.invalidName;
    }
    return null;
  }
}
