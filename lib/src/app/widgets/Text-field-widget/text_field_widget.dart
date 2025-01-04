import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meal_time_app/src/app/themes/app_palette.dart';
import 'package:meal_time_app/src/app/themes/app_spacing.dart';
import 'package:meal_time_app/src/app/themes/app_typography.dart';
import 'package:meal_time_app/src/app/utils/extentions/keyboard_utile.dart';

/// A customizable TextFormField widget that supports various input configurations.
class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.placeholder,
    this.type,
    this.controller,
    this.initialValue,
    this.validator,
    this.isHidden = false,
    this.isDisabled = false,
    this.isTextarea = false,
    this.suffixIcon,
    this.onChanged,
    this.onSuffixPressed,
    this.suffixIconPath,
  });

  /// Placeholder text to be displayed when the input field is empty.
  final String placeholder;

  /// Type of keyboard to display, e.g., `TextInputType.emailAddress` or `TextInputType.number`.
  final TextInputType? type;

  /// Initial value for the input field, used when no controller is provided.
  final String? initialValue;

  /// Controller for managing the input text programmatically.
  final TextEditingController? controller;

  /// A function for validating the input, returning an error message if invalid.
  final String? Function(String?)? validator;

  /// Whether the input text should be hidden, typically for passwords.
  final bool isHidden;

  /// Whether the input field should be disabled (read-only).
  final bool isDisabled;

  /// Whether the input field should act as a text area (multi-line input).
  final bool isTextarea;

  /// Icon to be displayed as a suffix in the input field.
  final IconData? suffixIcon;

  /// A callback triggered whenever the input text changes.
  final Function(String)? onChanged;

  /// A callback triggered when the suffix icon is pressed.
  final void Function()? onSuffixPressed;
  final String? suffixIconPath;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      controller: controller,
      validator: validator,
      obscureText: isHidden,
      keyboardType: type,
      readOnly: isDisabled,
      style: TextStyle(
        color: AppPalette.black,
        fontSize: AppTypography.b2Regular,
      ),
      decoration: _buildDecoration(),
      maxLines: isTextarea ? 3 : 1,
      onChanged: onChanged,
      onTapOutside: (event) => context.hideKeyboard(),
    );
  }

  /// Builds the input field decoration, including borders, colors, and suffix icon.
  InputDecoration? _buildDecoration() {
    return InputDecoration(
      hintText: placeholder,
      hintStyle: TextStyle(
        color: AppPalette.greySwatch,
        fontSize: AppTypography.b2Regular,
      ),
      filled: true,
      fillColor: AppPalette.white,
      border: _setInputBorder(AppPalette.greySwatch),
      enabledBorder: _setInputBorder(AppPalette.greySwatch),
      errorBorder: _setInputBorder(AppPalette.errorRed),
      focusedBorder: _setInputBorder(AppPalette.successGreen),
      isDense: true,
      prefix: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSpacing.s8,
        ),
      ),
      suffixIcon: IconButton(
        onPressed: onSuffixPressed,
        icon: SvgPicture.asset(suffixIconPath??''),
      ),
      contentPadding: EdgeInsets.symmetric(
        vertical: AppSpacing.s20,
      ),
    );
  }

  /// Sets the border style and color for the input field.
  /// 
  /// - [color]: The color of the border.
  InputBorder? _setInputBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: BorderRadius.all(
        Radius.circular(AppSpacing.r16),
      ),
    );
  }
}