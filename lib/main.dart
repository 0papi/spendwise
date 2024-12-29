import 'package:flutter/material.dart';
import 'package:spend_wise/screens/common/base_layout.dart';
import 'package:spend_wise/screens/common/splash_screen.dart';
import 'package:spend_wise/screens/modules/auth/login.dart';
import 'package:spend_wise/screens/modules/auth/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'SpendWise  | Save Smart',
      home: const SplashScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/dashboard': (context) => BaseLayoutScreeen()
      },
    );
  }
}
