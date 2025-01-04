import 'package:flutter/material.dart';
import 'package:meal_time_app/src/app/resources/assets_manager.dart';
import 'package:meal_time_app/src/app/utils/validator.dart';
import 'package:meal_time_app/src/app/widgets/Text-field-widget/text_field_widget.dart';

class TemplatePage extends StatelessWidget {
  const TemplatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                TextFieldWidget(
                  placeholder: 'Enter your name',
                  type: TextInputType.text,
                  isHidden: true,
                  isDisabled: true,
                ),
                TextFieldWidget(
                  placeholder: 'Enter your password',
                  type: TextInputType.visiblePassword,
                  isHidden: true,
                  controller: TextEditingController(),
                  suffixIconPath: AssetsManager.eye,
                  onSuffixPressed: () {},
                  validator: FormValidatorHelper.validatePassword,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
