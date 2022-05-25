import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../const/const.dart';

class courseDetailsScreen extends StatelessWidget {
  static const String ID = 'CourseDetails';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/BecomeAWeb.png",
                  fit: BoxFit.cover,
                ),
              ),
              SvgPicture.asset("assets/images/Back.svg"),
              Column(
                children: [
                  const SizedBox(
                    height: 230,
                  ),
                  const Center(
                    child: Text(
                      "Learn UI/UX for beginners",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Author: ',
                        style: TextStyle(fontSize: 14, color: Color(0XFF1B1816)),
                      ),
                      Text(
                        'Ahmed Abaza',
                        style: TextStyle(fontSize: 15, color: Color(0XFF1B1816)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
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
                          'Start Course',
                          style: TextStyle(fontSize: 15, color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
