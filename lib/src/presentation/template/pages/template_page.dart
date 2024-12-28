import 'package:flutter/material.dart';
import 'package:meal_time_app/src/app/widgets/meal-card-widget/meal_card_widget.dart';

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
               MealCardWidget(), 
              ],
            )),
          ),
        ),
      ),
    );
  }
}
