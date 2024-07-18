import 'package:flutter/material.dart';
import 'package:flutter_application_1/function.dart';
import 'package:flutter_application_1/linkden_home_screen.dart';
import 'package:flutter_application_1/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    print("init state called");
    navigateToNextScreen();
  }

  //navigate to nextpage
  void navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    final bool isLogedIn = await gettingBoolData();
    if (isLogedIn) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LinkdenHomeScreen(),
          ));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 100,
        ),
      ),
    );
  }
}
