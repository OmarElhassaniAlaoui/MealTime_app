import 'package:flutter/material.dart';
import 'package:meal_time_app/src/app/routes/app_router_config.dart';
import 'package:meal_time_app/src/app/themes/app_themes.dart';

class MealTimeApp extends StatefulWidget {
  const MealTimeApp({super.key});

  @override
  State<MealTimeApp> createState() => _MealTimeAppState();
}

class _MealTimeAppState extends State<MealTimeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.dark,
      routerConfig: AppPagesConfig().router,
    );
  }
}
