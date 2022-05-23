import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        title: const Text(
          'Categories',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
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
                    SvgPicture.asset(
                      courseCategories[index],
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
