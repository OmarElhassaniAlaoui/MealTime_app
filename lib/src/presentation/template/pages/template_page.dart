import 'package:flutter/material.dart';
import 'package:meal_time_app/src/app/themes/app_spacing.dart';
import 'package:meal_time_app/src/app/widgets/Text-field-widget/text_field_widget.dart';

class TemplatePage extends StatelessWidget {
  const TemplatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFieldWidget(
                  placeholder: "Enter your name",
                ),
                SizedBox(
                  height: AppSpacing.s16,
                ),
                TextFieldWidget(
                  placeholder: "Enter your name",
                  type: TextInputType.visiblePassword,
                  isHidden: true,
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
