import 'package:chatx/core/theme/app_theme.dart';
import 'package:chatx/presentation/splash/splash_screen.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
