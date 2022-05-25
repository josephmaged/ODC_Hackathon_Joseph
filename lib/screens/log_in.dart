import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:odc_courses/network/dio_helper.dart';
import 'package:odc_courses/screens/home_screen.dart';
import 'package:odc_courses/screens/sign_up.dart';
import 'package:odc_courses/widgets/text_form_field.dart';
import 'package:odc_courses/model/user.dart';

import '../const/const.dart';

class LogIn extends StatefulWidget {
  static const String ID = 'LogIn';

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            "assets/images/LogInSignUp.svg",
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  SvgPicture.asset(
                    "assets/images/Logo.svg",
                    height: 45,
                  ),
                  const SizedBox(height: 50),
                  Row(
                    children: const [
                      Text(
                        'Welcome ',
                        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Back',
                        style: TextStyle(color: primaryColor, fontSize: 35, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const Text('Login', style: TextStyle(fontSize: 20)),
                  const SizedBox(height: 40),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        customTextFormField(
                          controller: emailController,
                          hintText: "E-mail",
                          prefixIcon: Icons.email_outlined,
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 20),
                        customTextFormField(
                          controller: passwordController,
                          hintText: "Password",
                          prefixIcon: Icons.lock_outline,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              "Forget Password?",
                              style: TextStyle(color: primaryColor),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: SizedBox(
                            height: 56,
                            width: 335,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: primaryColor,
                              ),
                              onPressed: () {
                                DioHelper.postData(url: "/login", data: {
                                  "email": "bosayousef981@gmail.com",
                                  "password": "asdfghMMM9",
                                });
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(fontSize: 14, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don’t Have an Account? ',
                              style: TextStyle(fontSize: 13),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed(SignUp.ID);
                              },
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0XFFFF6600),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
