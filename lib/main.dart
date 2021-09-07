import 'package:flutter/material.dart';
import 'package:kidmoz/pages/loginScreen.dart';
import 'package:kidmoz/pages/onboardingScreen.dart';
import 'package:kidmoz/pages/sigupScreen.dart';
import 'package:kidmoz/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Onboarding(),
        MyRoutes.onboardingRout: (context) => Onboarding(),
        MyRoutes.loginRoute: (context) => LoginScreen(),
        MyRoutes.homeRoute: (context) => SignUpScreen(),
      },
    );
  }
}
