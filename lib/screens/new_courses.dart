import 'package:flutter/material.dart';


final List<String> courseImg = <String>['assets/images/BecomeAWeb.png', 'assets/images/UI_UX.png'];
final List<String> courseName = <String>['Become a Web Developer from Scratch', 'Learn UI/UX for Beginners'];
final List<String> courseAuth = <String>['Ahmed Abaza', 'Ahmed Abaza'];
final List<String> courseHours = <String>['15 Hours', '15 Hours'];

class newCourses extends StatelessWidget {
  static const String ID = 'NewCourses';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          'New Courses',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: courseName.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      courseImg[index],
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                        courseName[index]
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            courseAuth[index]
                        ),
                        const Text(" "),
                        Text(
                            courseHours[index]
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      )
    );
  }
}
