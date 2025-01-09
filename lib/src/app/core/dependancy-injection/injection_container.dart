import './exports.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  await dotenv.load(fileName: '.env');
  // init supabase 
  final supabase = await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_KEY']!,
  );
 
}
