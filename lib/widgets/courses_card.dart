import 'package:flutter/material.dart';
import 'package:odc_courses/screens/course_details_screen.dart';

class coursesCard extends StatelessWidget {

  String courseImg;
  String category;
  String courseName;
  String courseAuth;
  String courseHours;

  coursesCard({required this.courseImg,required this.category,required this.courseName,required this.courseAuth,required this.courseHours});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5,left: 5),
      child: SizedBox(
        width: 260,
        height: 250,
        child: GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(courseDetailsScreen.ID),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                courseImg,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 5),
              Text(
                courseName,
                style: TextStyle(fontSize: 10, color: Color(0XFFFF6600)),
              ),
              const SizedBox(height: 5),
              Text(
                courseName,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    courseAuth,
                    style: const TextStyle(fontSize: 12, color: Color(0XFF979797)),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    courseHours,
                    style: const TextStyle(fontSize: 12, color: Color(0XFF979797)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
