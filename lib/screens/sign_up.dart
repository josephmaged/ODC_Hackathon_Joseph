import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odc_courses/const/const.dart';
import 'package:odc_courses/screens/log_in.dart';
import 'package:odc_courses/screens/privacy_policy.dart';

import '../widgets/text_form_field.dart';

class SignUp extends StatefulWidget {
  static const String ID = 'SignUp';

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  bool privacyCheckBox = false;

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
                  Row(
                    children: const [
                      Text(
                        'Hello, ',
                        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Friend!',
                        style: TextStyle(color: primaryColor, fontSize: 35, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const Text('Sign Up', style: TextStyle(fontSize: 24)),
                  const SizedBox(height: 40),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        customTextFormField(
                          hintText: "Full Name",
                          prefixIcon: Icons.person_outline,
                          keyboardType: TextInputType.name,
                        ),
                        const SizedBox(height: 20),
                        customTextFormField(
                          hintText: "E-mail",
                          prefixIcon: Icons.email_outlined,
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 20),
                        customTextFormField(
                          obscureText: true,
                          hintText: "Password",
                          prefixIcon: Icons.lock_outline,
                          keyboardType: TextInputType.visiblePassword,
                        ),
                        const SizedBox(height: 20),
                        customTextFormField(
                          hintText: "Phone Number",
                          prefixIcon: Icons.phone_outlined,
                          keyboardType: TextInputType.phone,
                        ),
                        const SizedBox(height: 20),
                        customTextFormField(
                          hintText: "Address",
                          prefixIcon: Icons.location_on_outlined,
                          keyboardType: TextInputType.streetAddress,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Checkbox(value: privacyCheckBox, onChanged: null),
                      const Text(
                        'Do you agree to our ',
                        style: TextStyle(fontSize: 12, color: Color(0XFF3A3A3A)),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).pushNamed(PrivacyPolicy.ID),
                        child: const Text(
                          "Privacy Policy",
                          style: TextStyle(fontSize: 12, color: Color(0XFFFF6600)),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: SizedBox(
                      height: 56,
                      width: 335,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: primaryColor,
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Sign Up',
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
                        'Already Have an Account? ',
                        style: TextStyle(
                          fontSize: 13
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed(LogIn.ID);
                        },
                        child: const Text(
                          'Log in',
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
            ),
          )
        ],
      ),
    );
  }
}
