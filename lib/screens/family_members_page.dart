import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item.dart';
import 'package:language_learning_app/models/number.dart';

class FamilyMembersPage extends StatelessWidget {
  FamilyMembersPage({super.key});

  final List<ItemModel> familyMemberList = [
    ItemModel(
        image: 'assets/images/family_members/family_mother.png',
        jpName: "Hahaoya",
        enName: "mother",
        sound: 'sounds/family_members/mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_father.png',
        jpName: "Chichioya",
        enName: "father",
        sound: 'sounds/family_members/father.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: "Musume",
        enName: "daughter",
        sound: 'sounds/family_members/daughter.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_son.png',
        jpName: "Musuko",
        enName: "son",
        sound: 'sounds/family_members/son.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: "Sofu",
        enName: "grandfather",
        sound: 'sounds/family_members/grand father.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: "Sobo",
        enName: "grandmother",
        sound: 'sounds/family_members/grand mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: "Imōto",
        enName: "younger sister",
        sound: 'sounds/family_members/younger sister.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: "Ani",
        enName: "older brother",
        sound: 'sounds/family_members/older brother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: "Ane",
        enName: "older sister",
        sound: 'sounds/family_members/older sister.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: "Otōto",
        enName: "younger brother",
        sound: 'sounds/family_members/younger brother.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Family Members",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff46332B),
      ),
      body: ListView.builder(
        itemCount: familyMemberList.length,
        itemBuilder: (context, index) {
          return Item(
              color: const Color(0xff608B3D), number: familyMemberList[index]);
        },
      ),
    );
  }
}
