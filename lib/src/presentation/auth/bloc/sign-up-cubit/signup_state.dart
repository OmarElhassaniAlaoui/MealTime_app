part of 'signup_cubit.dart';

enum SignUpStatus { initial, loading, success, error, invalid }

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

final class SignupLoading extends SignupState {}

final class SignupSuccess extends SignupState {}

final class SignupError extends SignupState {}

final class SignupInvalid extends SignupState {}
