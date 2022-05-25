import 'package:flutter/material.dart';
import 'package:odc_courses/screens/categories_course_list.dart';
import 'package:odc_courses/screens/categories_screen.dart';
import 'package:odc_courses/screens/course_details_screen.dart';
import 'package:odc_courses/screens/home_screen.dart';
import 'package:odc_courses/screens/log_in.dart';
import 'package:odc_courses/screens/new_courses.dart';
import 'package:odc_courses/screens/onboarding_screen.dart';
import 'package:odc_courses/screens/privacy_policy.dart';
import 'package:odc_courses/screens/sign_up.dart';
import 'package:odc_courses/screens/splash_screen.dart';

import 'network/dio_helper.dart';

void main() {
  WidgetsBinding.instance;
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ODC Courses',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto'
      ),
      routes: {
        SplashScreen.ID: (context) =>  const SplashScreen(),
        OnBoardingScreen.ID: (context) => const OnBoardingScreen(),
        SignUp.ID: (context) => SignUp(),
        LogIn.ID: (context) => LogIn(),
        PrivacyPolicy.ID: (context) => PrivacyPolicy(),
        HomeScreen.ID: (context) => HomeScreen(),
        categoriesScreen.ID: (context) => categoriesScreen(),
        categoriesCourseList.ID: (context) => categoriesCourseList(),
        newCourses.ID: (context) => newCourses(),
        courseDetailsScreen.ID: (context) => courseDetailsScreen(),
      },
      home: const SplashScreen(),
    );
  }
}