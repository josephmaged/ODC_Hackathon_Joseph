import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odc_courses/widgets/text_form_field.dart';

class categoriesCourseList extends StatelessWidget {
  static const String ID = 'CategoriesCourseList';

  final List<String> courseImg = <String>['assets/images/BecomeAWeb.png', 'assets/images/UI_UX.png'];
  final List<String> courseName = <String>['Become a Web Developer from Scratch', 'Learn UI/UX for Beginners'];
  final List<String> courseAuth = <String>['Ahmed Abaza', 'Ahmed Abaza'];
  final List<String> courseHours = <String>['15 Hours', '15 Hours'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Web Development'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            customTextFormField(
              keyboardType: TextInputType.name,
              prefixIcon: Icons.search,
              hintText: "Search",
            ),
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
            )
          ],
        ),
      ),
    );
  }
}
