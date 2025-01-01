import 'package:flutter/material.dart';
import 'package:meal_time_app/src/app/widgets/Button-widget/button_widget.dart';
import 'package:flutter_svg/svg.dart';
part '../widgets/buttom_section.dart';
part '../widgets/logo_section.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Expanded(
              child: _LogoSection(),
            ),
            const SizedBox(height: 30),
            _BottomSection(),
          ],
        ),
      ),
    );
  }
}


