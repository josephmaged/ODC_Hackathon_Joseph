import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odc_courses/screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String ID = 'SplashScreen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigateToHome();
    super.initState();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 2))
        .whenComplete(() => Navigator.of(context).pushReplacementNamed(OnBoardingScreen.ID));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          "assets/images/Logo.svg",
        ),
      ),
    );
  }
}
