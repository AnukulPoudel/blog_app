import 'package:blog_app/core/secrets/app_secrets.dart';
import 'package:blog_app/core/themes/theme.dart';
import 'package:blog_app/features/auth/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// for connecting supabase we need to make the main function async
void main() async {
  // whenever we add anything that uses await it is necessary to add the following code. It is already present in runApp()
  WidgetsFlutterBinding.ensureInitialized();
  // Used to connect to supabase, anonkey and supabaseurl are stored on core/secrets/app_secret.dart and is added in .gitignore
  await Supabase.initialize(
      anonKey: AppSecrets.anonKey, url: AppSecrets.supaBaseUrl);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog App',
      theme: AppTheme.darkThemeMode,
      home: const LoginInPage(),
    );
  }
}
