part of 'signup_cubit.dart';


sealed class SignupState extends Equatable {
  const SignupState();

  @override
  List<Object> get props => [];
}

final class SignupInitial extends SignupState {
  const SignupInitial();

  @override
  List<Object> get props => [];
}

///
/// Signup States
///
final class SignupLoading extends SignupState {}

final class SignupSuccess extends SignupState {}

final class SignupError extends SignupState {}

final class SignupInvalid extends SignupState {}

///
/// Terms & Conditions State
///
final class TermsAndConditionsInitial extends SignupState {}

final class TermsAndConditionsAccepted extends SignupState {
  final bool isTermsAndConditionsAccepted;
  const TermsAndConditionsAccepted(
    this.isTermsAndConditionsAccepted,
  );

  @override
  List<Object> get props => [isTermsAndConditionsAccepted];
}

final class TermsAndConditionsNotAccepted extends SignupState {} 
///
/// Form fiels state
/// 

final class UserTypingState extends SignupState  {}

final class FormFieldsValid extends SignupState {}

final class FormFieldsInvalid extends SignupState {}

final class FormFieldsEmpty extends SignupState {}

final class ObscureTextToggled extends SignupState {
  final bool isObscureText;
  const ObscureTextToggled(this.isObscureText);

  @override
  List<Object> get props => [isObscureText];
}