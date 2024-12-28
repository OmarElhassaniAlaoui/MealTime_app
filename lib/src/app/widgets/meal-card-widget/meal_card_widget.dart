import 'package:flutter/material.dart';
import 'package:meal_time_app/src/app/themes/app_palette.dart';
import 'package:meal_time_app/src/app/themes/app_spacing.dart';

class MealCardWidget extends StatelessWidget {
  const MealCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          color: Colors.transparent,
          shadowColor: Colors.transparent,
          child: SizedBox( 
            height: 200,
            width: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start , 
              
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppSpacing.r20),
                  child: Image.asset(
                    "assets/images/recepe.jpg",
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: AppSpacing.r20),
                Text(
                  "Brussels Sprouts, Mashed Potato & Sausage Bowl with",
                  style: TextStyle(
                    fontSize: AppSpacing.r20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: AppPalette.white,
                  borderRadius: BorderRadius.circular(AppSpacing.r20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 4,
                    )
                  ],
                ),
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            )),
      ],
    );
  }
}
