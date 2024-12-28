import 'package:flutter/material.dart';
import 'package:meal_time_app/src/app/themes/app_palette.dart';
import 'package:meal_time_app/src/app/themes/app_spacing.dart';
import 'package:meal_time_app/src/app/widgets/meal-card-widget/meal_card_enum.dart';

class MealCardWidget extends StatelessWidget {
  final String title;
  final String imageUrl;
  final MealCardType type;

  const MealCardWidget({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildCard(context, title, imageUrl),
        _buildPositioned(context, type),
      ],
    );
  }
}

Card _buildCard(BuildContext context, String title, String imageUrl) {
  return Card(
    color: Colors.transparent,
    shadowColor: Colors.transparent,
    child: SizedBox(
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSpacing.r20),
            child: Image.asset(
              imageUrl,
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: AppSpacing.s14),
          Text(
            title,
            style: const TextStyle(
              fontSize: AppSpacing.r20,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}

Positioned _buildPositioned(BuildContext context, MealCardType type) {
  return Positioned(
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
    ),
  );
}
