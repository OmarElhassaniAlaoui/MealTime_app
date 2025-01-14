import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_time_app/src/app/helpers/my_cubit_observer.dart';
import 'package:meal_time_app/src/meal_time_app.dart';
import 'package:meal_time_app/src/app/core/dependancy-injection/injection_container.dart'
    as di;
import 'package:meal_time_app/src/presentation/auth/bloc/sign-up-cubit/signup_cubit.dart';

void main() async {
  Bloc.observer = MyBlocObserver();

  WidgetsFlutterBinding.ensureInitialized();

  await di.init();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<SignupCubit>(
          create: (context) => di.sl<SignupCubit>(),
          
        ),
      ],
      child: MealTimeApp(),
    ),
  );
}
