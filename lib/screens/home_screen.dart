import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:odc_courses/const/const.dart';
import 'package:odc_courses/screens/categories_screen.dart';
import 'package:odc_courses/widgets/courses_card.dart';

class HomeScreen extends StatefulWidget {
  static const String ID = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

final List<String> courseImg = <String>['assets/images/BecomeAWeb.png', 'assets/images/UI_UX.png'];
final List<String> courseCategory = <String>['Web Development', 'UI & UX Design'];
final List<String> courseName = <String>['Become a Web Developer from Scratch', 'Learn UI/UX for Beginners'];
final List<String> courseAuth = <String>['Ahmed Abaza', 'Ahmed Abaza'];
final List<String> courseHours = <String>['15 Hours', '15 Hours'];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset(
                    "assets/images/Logo.svg",
                    height: 45,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 195,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                    boxShadow: const [
                      BoxShadow(
                        color: primaryColor,
                        spreadRadius: 0,
                        offset: Offset(0, 7),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        const Text(
                          'Enter the Code to \nGet your course',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              height: 50,
                              width: 250,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter Code",
                                  hintStyle: TextStyle(color: Color(0XFF636363), fontSize: 12),
                                  filled: true,
                                  fillColor: Color(0XFF2B2B2B),
                                ),
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: const CircleBorder(),
                                  primary: primaryColor,
                                  padding: const EdgeInsets.all(0),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Top Categories',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pushNamed(categoriesScreen.ID),
                      child: const Text(
                        'See All',
                        style: TextStyle(fontSize: 12, decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: SvgPicture.asset('assets/images/WebDevelopment.svg'),
                    ),
                    GestureDetector(
                      child: SvgPicture.asset('assets/images/ProgrammingLanguages.svg'),
                    ),
                    GestureDetector(
                      child: SvgPicture.asset('assets/images/WebDevelopment.svg'),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'New Courses',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'See All',
                        style: TextStyle(fontSize: 12, decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 236,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: courseImg.length,
                    itemBuilder: (BuildContext context, int index) {
                      return coursesCard(
                          courseImg: courseImg[index],
                          category: courseCategory[index],
                          courseName: courseName[index],
                          courseAuth: courseAuth[index],
                          courseHours: courseHours[index]);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.black,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.of(context).pushNamed(HomeScreen.ID);
              break;
            case 1:
              null;
              break;
            case 2:
              null;
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: 'Courses'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile'
          ),
        ],
      ),
    );
  }
}
