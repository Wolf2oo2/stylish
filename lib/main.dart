import 'package:flutter/material.dart';
import 'package:stylish/modules/auth/create_password_screen.dart';
import 'package:stylish/modules/auth/login_screen.dart';
import 'package:stylish/modules/launch/on_boarding_screen.dart';
import 'package:stylish/modules/launch/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(fontFamily: 'Gilory'),
      debugShowCheckedModeBanner: false,
    initialRoute: '/splash_screen',
    routes: {
        '/splash_screen':(context)=>const SplashScreen(),
      '/on_boarding_screen':(context)=>const OnBoardingScreen(),
      '/login_screen':(context)=>  const LoginScreen(),
      CreatePasswordScreen.screenRoute:(context)=>  const CreatePasswordScreen(),

    },

    );
  }
}
