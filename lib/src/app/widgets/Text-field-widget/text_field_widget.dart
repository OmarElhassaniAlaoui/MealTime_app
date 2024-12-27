import 'package:flutter/material.dart';
import 'package:meal_time_app/src/app/themes/app_palette.dart';
import 'package:meal_time_app/src/app/themes/app_spacing.dart';
import 'package:meal_time_app/src/app/themes/app_typography.dart';

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
  });

  final String placeholder;
  final TextInputType? type;
  final String? initialValue;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool isHidden;
  final bool isDisabled;
  final bool isTextarea;
  final IconData? suffixIcon;
  final Function(String)? onChanged;
  final void Function()? onSuffixPressed;

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
    );
  }

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
        icon: Icon(suffixIcon),
      ),
      contentPadding: EdgeInsets.symmetric(
        vertical: AppSpacing.s20,
      ),
    );
  }

  InputBorder? _setInputBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: BorderRadius.all(
        Radius.circular(AppSpacing.r16),
      ),
    );
  }
}
