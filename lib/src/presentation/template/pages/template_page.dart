import 'package:flutter/material.dart';
import 'package:meal_time_app/src/app/widgets/Button-widget/button_enum.dart';
import 'package:meal_time_app/src/app/widgets/Button-widget/button_widget.dart';

class TemplatePage extends StatelessWidget {
  const TemplatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Template page'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: ButtonWidget(
            text: "Button",
            borderRadius: 16.0,
            type: ButtonType.disabled,
            height: 57.0,
            icon: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
