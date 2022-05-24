import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odc_courses/screens/categories_course_list.dart';

class categoriesScreen extends StatelessWidget {
  static const String ID = 'CategoriesScreen';

  final List<String> courseCategories = <String>[
    'assets/images/WebDevelopment.svg',
    'assets/images/ProgrammingLanguages.svg',
    'assets/images/Graphics.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          'Categories',
        ),
      ),
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: courseCategories.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 130,
              width: 130,
              child: Center(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pushNamed(categoriesCourseList.ID),
                      child: SvgPicture.asset(
                        courseCategories[index],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
