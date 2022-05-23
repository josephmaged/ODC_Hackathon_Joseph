import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class onBoarding extends StatelessWidget {

  String svgPicture;
  onBoarding({required this.svgPicture});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SvgPicture.asset(
            svgPicture,
          ),
          const SizedBox(height: 20),
          const SizedBox(
            width: 234,
            child: Text(
              'Learn a lot of courses \nin Orange Education',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          const SizedBox(height: 20),
          const SizedBox(
            width: 251,
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
              style: TextStyle(
                  fontSize: 13,
                color: Color(0XFF8F8F8F)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
