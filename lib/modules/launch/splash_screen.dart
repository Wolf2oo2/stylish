import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacementNamed('/on_boarding_screen');
      },
    );
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            alignment: AlignmentDirectional.center,
            width: 150,
            height: 150,
            decoration: const BoxDecoration(
              color: Color(0xff0b3ada),
              borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(50),
                topEnd: Radius.circular(50),
              ),
            ),
            child: const Image(
              image: AssetImage('images/app_logo.png'),
            ),
          ),
        ]),
      ),
    );
  }
}
