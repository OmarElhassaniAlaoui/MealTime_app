import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
import 'package:meal_time_app/src/presentation/auth/bloc/sign-up-cubit/signup_cubit.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool isTermsAndConditionsAccepted = false;

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
                key: _formKey,
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
                      controller: _nameController,
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
                      controller: _emailController,
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
                    BlocBuilder<SignupCubit, SignupState>(
                      buildWhen: (previous, current) =>
                          current is ObscureTextToggled,
                      builder: (context, state) {
                        if (state is ObscureTextToggled) {
                          return TextFieldWidget(
                            placeholder: 'Enter your password',
                            type: TextInputType.visiblePassword,
                            isHidden: state.isObscureText,
                            controller: _passwordController,
                            suffixIconPath: state.isObscureText
                                ? AssetsManager.eyeOff
                                : AssetsManager.eye,
                            onSuffixPressed: () {
                              context
                                  .read<SignupCubit>()
                                  .toggleObscureText(!state.isObscureText);
                            },
                            validator: FormValidatorHelper.validatePassword,
                          );
                        }
                        return TextFieldWidget(
                          placeholder: 'Enter your password',
                          type: TextInputType.visiblePassword,
                          isHidden: true,
                          controller: _passwordController,
                          suffixIconPath: AssetsManager.eyeOff,
                          onSuffixPressed: () {
                            context.read<SignupCubit>().toggleObscureText(true);
                          },
                          validator: FormValidatorHelper.validatePassword,
                        );
                      },
                    ),
                    const Gap(AppSpacing.s18),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        BlocBuilder<SignupCubit, SignupState>(
                          builder: (context, state) {
                            if (state is TermsAndConditionsAccepted) {
                              isTermsAndConditionsAccepted =
                                  state.isTermsAndConditionsAccepted;
                            }
                            return Checkbox(
                              value: isTermsAndConditionsAccepted,
                              onChanged: (value) {
                                context
                                    .read<SignupCubit>()
                                    .termsCondionsAgreed(value ?? false);
                              },
                              activeColor: AppPalette.primarySwatch,
                              side: BorderSide(
                                color: AppPalette.greySwatch,
                                width: 1,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(AppSpacing.r4),
                              ),
                            );
                          },
                        ),
                        Text(
                          "I agree to Mealtime's",
                          style: TextStyle(
                            fontSize: AppTypography.b3Regular,
                            fontFamily: AppTypography.familyDMSans,
                            fontWeight: AppTypography.w400,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            context.go(AppRoutes.signUp);
                          },
                          style: TextButton.styleFrom(
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
                              fontSize: AppTypography.b3Regular,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(AppSpacing.s20),
              BlocBuilder<SignupCubit, SignupState>(
                buildWhen: (previous, current) =>
                    current is TermsAndConditionsAccepted,
                builder: (context, state) {
                  if (state is TermsAndConditionsAccepted) {
                    return ButtonWidget(
                      text: "Create account",
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.go(AppRoutes.welcome);
                        }
                      },
                      isDisabled: false,
                      type: ButtonType.primary,
                    );
                  }
                  return ButtonWidget(
                    text: "Create account",
                    isDisabled: true,
                    type: ButtonType.disabled,
                  );
                },
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
