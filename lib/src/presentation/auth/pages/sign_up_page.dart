import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_time_app/src/app/resources/assets_manager.dart';
import 'package:meal_time_app/src/app/routes/app_router_config.dart';
import 'package:meal_time_app/src/app/themes/app_palette.dart';
import 'package:meal_time_app/src/app/themes/app_spacing.dart';
import 'package:meal_time_app/src/app/themes/app_typography.dart';
import 'package:meal_time_app/src/app/utils/validator.dart';
import 'package:meal_time_app/src/app/widgets/Button-widget/button_enum.dart';
import 'package:meal_time_app/src/app/widgets/Button-widget/button_widget.dart';
import 'package:meal_time_app/src/app/widgets/Text-field-widget/text_field_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go(AppRoutes.welcome);
            }
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 16, vertical: AppSpacing.r16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: AppTypography.familyDMSans,
                  fontWeight: AppTypography.w700,
                ),
              ),
              const Gap(AppSpacing.s24),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Full Name",
                      style: TextStyle(
                        fontSize: AppTypography.b1Bold,
                        fontFamily: AppTypography.familyDMSans,
                        fontWeight: AppTypography.w700,
                      ),
                    ),
                    const Gap(AppSpacing.s8),
                    TextFieldWidget(
                      placeholder: 'Enter your name',
                      controller: TextEditingController(),
                      validator: FormValidatorHelper.validateName,
                    ),
                    const Gap(AppSpacing.s18),
                    Text(
                      "Email",
                      style: TextStyle(
                        fontSize: AppTypography.b1Bold,
                        fontFamily: AppTypography.familyDMSans,
                        fontWeight: AppTypography.w700,
                      ),
                    ),
                    Gap(AppSpacing.s8),
                    TextFieldWidget(
                      placeholder: 'Enter your email',
                      controller: TextEditingController(),
                      validator: FormValidatorHelper.validateEmail,
                    ),
                    const Gap(AppSpacing.s18),
                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: AppTypography.b1Bold,
                        fontFamily: AppTypography.familyDMSans,
                        fontWeight: AppTypography.w700,
                      ),
                    ),
                    Gap(AppSpacing.s8),
                    TextFieldWidget(
                      placeholder: 'Enter your password',
                      type: TextInputType.visiblePassword,
                      isHidden: true,
                      controller: TextEditingController(),
                      suffixIconPath: AssetsManager.eye,
                      onSuffixPressed: () {},
                      validator: FormValidatorHelper.validatePassword,
                    ),
                    const Gap(AppSpacing.s18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {
                            log("Value: $value");
                          },
                          activeColor: AppPalette.primarySwatch,
                          side: BorderSide(
                            color: AppPalette.greySwatch,
                            width: 1,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppSpacing.r4),
                          ),
                          fillColor: WidgetStateProperty.all(
                            AppPalette.white,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "I agree to Mealtime's",
                              style: TextStyle(
                                fontSize: AppTypography.b1Regular,
                                fontFamily: AppTypography.familyDMSans,
                                fontWeight: AppTypography.w400,
                              ),
                            ),
                            const Gap(AppSpacing.s4),
                            TextButton(
                              onPressed: () {
                                context.go(AppRoutes.signUp);
                              },
                              style: TextButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                minimumSize: Size.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text(
                                "Terms & Conditions",
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.black,
                                  fontFamily: AppTypography.familyDMSans,
                                  fontWeight: AppTypography.w700,
                                  fontSize: AppTypography.b2Regular,
                                ),
                              ),
                            ),
                            // style: TextButton.styleFrom(
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(AppSpacing.s20),
              ButtonWidget(
                text: "Create account",
                onPressed: () {
                  context.go(AppRoutes.welcome);
                },
                isDisabled: true,
                type: ButtonType.disabled,
              ),
              const Gap(AppSpacing.s20),
              const Row(
                children: [
                  Expanded(child: Divider(color: AppPalette.greySwatch)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Or',
                      style: TextStyle(color: AppPalette.greySwatch),
                    ),
                  ),
                  Expanded(child: Divider(color: AppPalette.greySwatch)),
                ],
              ),
              const Gap(AppSpacing.s20),
              ButtonWidget(
                text: "Sign up with google",
                onPressed: () {
                  context.go(AppRoutes.welcome);
                },
                type: ButtonType.secondary,
                icon: SvgPicture.asset(AssetsManager.logosgoogleicon),
              ),
              const Gap(AppSpacing.s20),
              ButtonWidget(
                text: "Sign up with facebook",
                onPressed: () {
                  context.go(AppRoutes.welcome);
                },
                type: ButtonType.custom,
                icon: SvgPicture.asset(AssetsManager.logosfacebookwhitebg),
                bgColor: AppPalette.blue,
              ),
              const Gap(AppSpacing.s36),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already a member?",
                      style: TextStyle(
                        fontSize: AppTypography.b1Regular,
                        fontFamily: AppTypography.familyDMSans,
                        fontWeight: AppTypography.w400,
                      ),
                    ),
                    const Gap(AppSpacing.s4),
                    TextButton(
                      onPressed: () {
                        context.go(AppRoutes.signUp);
                      },
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.black,
                          fontFamily: AppTypography.familyDMSans,
                          fontWeight: AppTypography.w700,
                          fontSize: AppTypography.b2Regular,
                        ),
                      ),
                    ),
                    // style: TextButton.styleFrom(
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
