import 'package:flutter/material.dart';
import 'package:zoomer/screens/onboarding_screens.dart/onboarding_two.dart';
import 'package:zoomer/styles/appstyles.dart';

class OnboardingScreenOne extends StatefulWidget {
  const OnboardingScreenOne({super.key});

  @override
  State<OnboardingScreenOne> createState() => _OnboardingScreenOneState();
}

class _OnboardingScreenOneState extends State<OnboardingScreenOne> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "assets/Anywhere you are.png",
                height: screenWidth * 0.5,
              ),
              Text(
                'Any Where You Are',
                style:
                    Textstyles.titleText.copyWith(fontSize: screenWidth * 0.05),
              ),
              Text(
                'Get a ride at your doorstep, anytime, anywhere. Fast, reliable, and always at your service!.',
                style:
                    Textstyles.bodytext.copyWith(fontSize: screenWidth * 0.04),
                textAlign: TextAlign.center,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: ThemeColors.primaryColor, shape: BoxShape.circle),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const OnboardingScreenTwo()));
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                      color: ThemeColors.titleColor,
                      size: screenWidth * 0.07,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
