
import 'dart:developer';

import './exports.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  try {
    log('Loading .env file...');
    await dotenv.load(fileName: '.env');
    log('.env file loaded successfully.');

    log('Initializing Supabase...');
    final supabase = await Supabase.initialize(
      url: dotenv.env['SUPABASE_URL']!,
      anonKey: dotenv.env['SUPABASE_KEY']!,
    );
    log('Supabase initialized successfully.');

    log('Registering SignupCubit...');
    sl.registerFactory(() => SignupCubit());
    log('SignupCubit registered successfully.');
  } catch (e) {
    log('Error during initialization: $e');
    rethrow;
  }
}
