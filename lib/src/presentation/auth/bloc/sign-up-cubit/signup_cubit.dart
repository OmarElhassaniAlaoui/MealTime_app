import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());

  void termsCondionsAgreed(bool isTermsAndConditionsAccepted) {
    bool isAccepted = isTermsAndConditionsAccepted;
    emit(TermsAndConditionsAccepted(isAccepted));
  }

  void validatFormFields(GlobalKey<FormState> formKey) {}

  void toggleObscureText(bool isObscureText) {
    emit(ObscureTextToggled(isObscureText));
  }
}
