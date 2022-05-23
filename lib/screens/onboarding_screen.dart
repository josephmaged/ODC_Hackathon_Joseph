import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odc_courses/const/const.dart';
import 'package:odc_courses/screens/log_in.dart';
import 'package:odc_courses/widgets/onboarding.dart';
import 'package:odc_courses/screens/sign_up.dart';

class OnBoardingScreen extends StatefulWidget {
  static const String ID = 'OnBoardingScreen';

  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 500,
              child: PageView(
                controller: controller,
                children: [
                  onBoarding(svgPicture: "assets/images/Onboarding1.svg"),
                  onBoarding(svgPicture: "assets/images/Onboarding2.svg"),
                  onBoarding(svgPicture: "assets/images/Onboarding3.svg"),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  width: 154,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(SignUp.ID);
                    },
                    child: const Text(
                      'Join Now',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  height: 50,
                  width: 154,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(LogIn.ID);
                    },
                    child: const Text(
                      'Log in',
                      style: TextStyle(fontSize: 12, color: Color(0XFFFF6600)),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
