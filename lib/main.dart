import 'package:chat_ai/core/theme/app_theme.dart';
import 'package:chat_ai/presentation/splash/splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  
  runApp(ScreenUtilInit(
    designSize: const Size(375, 812),
    builder: (context,child) => const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: SplashScreen()
      
    );
  }
}
