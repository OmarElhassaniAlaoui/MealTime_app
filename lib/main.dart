import 'package:flutter/material.dart';
import 'package:meal_time_app/src/meal_time_app.dart';
import 'package:meal_time_app/src/app/core/dependancy-injection/injection_container.dart' as di; 



void main() {
   di.registerDependencies();
  runApp(const MealTimeApp());
}
