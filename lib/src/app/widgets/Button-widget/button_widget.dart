import 'package:flutter/material.dart';
import 'package:meal_time_app/src/app/themes/app_palette.dart';
import 'package:meal_time_app/src/app/widgets/Button-widget/button_enum.dart';

/// A customizable button widget that adapts to different use cases.
///
/// Features:
/// - Supports multiple button types: [ButtonType.primary], [ButtonType.secondary], [ButtonType.tertiary], and [ButtonType.disabled].
/// - Can display a loading spinner when `isLoading` is true.
/// - Supports enabling/disabling via the `isDisabled` flag.
/// - Fully customizable in terms of width, height, border radius, and colors.
///
/// Example:
/// ```dart
/// ButtonWidget(
///   text: 'Submit',
///   onPressed: () {
///     print('Button pressed');
///   },
///   type: ButtonType.primary,
///   isLoading: false,
///   isDisabled: false,
/// )
/// ```
class ButtonWidget extends StatelessWidget {
  /// The text to display on the button.
  final String text;

  /// The callback to be executed when the button is pressed.
  /// Set to `null` when `isLoading` or `isDisabled` is true.
  final VoidCallback? onPressed;

  /// The type of the button. Defaults to [ButtonType.primary].
  final ButtonType type;

  /// The width of the button. Defaults to filling the available width.
  final double? width;

  /// The height of the button. Defaults to 57.0.
  final double height;

  /// The border radius of the button. Defaults to 16.0.
  final double borderRadius;

  /// Whether the button should display a loading spinner. Defaults to `false`.
  final bool isLoading;

  /// Whether the button should be disabled. Defaults to `false`.
  final bool isDisabled;

  /// Creates a customizable button widget.
  const ButtonWidget({
    super.key,
    required this.text,
    this.onPressed,
    this.type = ButtonType.primary,
    this.width,
    this.height = 57.0,
    this.borderRadius = 16.0,
    this.isLoading = false,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height,
      child: ElevatedButton(
        /// Disables the button if `isLoading` or `isDisabled` is true.
        onPressed: (isLoading || isDisabled) ? null : onPressed,
        style: _getButtonStyle(),
        child: _buildButtonChild(),
      ),
    );
  }

  /// Builds the child widget for the button, which is either a loading spinner or the button text.
  Widget _buildButtonChild() {
    if (isLoading) {
      return const SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(AppPalette.white),
          strokeWidth: 2,
        ),
      );
    }
    return Text(
      text,
      style: _getTextStyle(),
    );
  }

  /// Returns the button style based on its state (enabled/disabled) and type.
  ButtonStyle _getButtonStyle() {
    return ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) {
          if (isDisabled || states.contains(WidgetState.disabled)) {
            return _getButtonColor().withOpacity(0.6);
          }
          return _getButtonColor();
        },
      ),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: _getBorderSide(),
        ),
      ),
      elevation: WidgetStateProperty.all(0),
    );
  }

  /// Returns the appropriate button color based on its type.
  Color _getButtonColor() {
    switch (type) {
      case ButtonType.primary:
        return AppPalette.primarySwatch[500]!;
      case ButtonType.secondary:
        return AppPalette.white;
      case ButtonType.tertiary:
        return AppPalette.primarySwatch[600]!;
      case ButtonType.disabled:
        return AppPalette.greySwatch;
    }
  }

  /// Returns the border style for the button.
  ///
  /// Buttons of type [ButtonType.secondary] have a grey border,
  /// while others have no border.
  BorderSide _getBorderSide() {
    if (type == ButtonType.secondary) {
      return const BorderSide(color: AppPalette.greySwatch, width: 1);
    }
    return BorderSide.none;
  }

  /// Returns the text style for the button.
  ///
  /// The text color changes based on the button type and whether it is disabled.
  TextStyle _getTextStyle() {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: isDisabled
          ? Colors.grey
          : (type == ButtonType.secondary
              ? AppPalette.black
              : AppPalette.white),
    );
  }
}
