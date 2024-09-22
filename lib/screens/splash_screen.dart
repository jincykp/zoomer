import 'package:flutter/material.dart';
import 'package:zoomer/screens/onboarding_screens.dart/onboarding_one.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gotoLogin();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 168, 0),
      body: Center(
          child: Text(
        "zoomeR",
        style: TextStyle(
            fontSize: 35, fontFamily: "FamilyGuy", color: Colors.black),
      )),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> gotoLogin() async {
    await Future.delayed(const Duration(seconds: 7));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const OnboardingScreenOne()));
  }
}
