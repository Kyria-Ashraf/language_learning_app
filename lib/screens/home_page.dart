import 'package:flutter/material.dart';
import 'package:language_learning_app/components/category_item.dart';
import 'package:language_learning_app/screens/colors_page.dart';
import 'package:language_learning_app/screens/family_members_page.dart';
import 'package:language_learning_app/screens/numbers_page.dart';
import 'package:language_learning_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE2D8C0),
      appBar: AppBar(
        backgroundColor: const Color(0xff46332B),
        title: const Text(
          "Toku",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Category(
            text: "Numbers",
            color: const Color(0xffFF9F3B),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return NumbersPage();
              }));
            },
          ),
          Category(
            text: "Family Members",
            color: const Color(0xff608B3D),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return FamilyMembersPage();
              }));
            },
          ),
          Category(
            text: "Colors",
            color: const Color(0xff854CAE),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return ColorsPage();
              }));
            },
          ),
          Category(
            text: "Phrases",
            color: const Color(0xff51B0D5),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return PhrasesPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
