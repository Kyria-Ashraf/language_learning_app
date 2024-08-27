import 'package:flutter/material.dart';
import 'package:language_learning_app/models/number.dart';
import 'package:language_learning_app/components/item.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});

  final List<ItemModel> colorList = [
    ItemModel(
        image: 'assets/images/colors/color_black.png',
        jpName: "Kuro",
        enName: "black",
        sound: 'sounds/colors/black.wav'),
    ItemModel(
        image: 'assets/images/colors/color_brown.png',
        jpName: "Chairo",
        enName: "brown",
        sound: 'sounds/colors/brown.wav'),
    ItemModel(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: "Dasutiierō",
        enName: "dusty yellow",
        sound: 'sounds/colors/dusty_yellow.wav'),
    ItemModel(
        image: 'assets/images/colors/color_gray.png',
        jpName: "Gurē",
        enName: "grey",
        sound: 'sounds/colors/gray.wav'),
    ItemModel(
        image: 'assets/images/colors/color_green.png',
        jpName: "Midori",
        enName: "green",
        sound: 'sounds/colors/green.wav'),
    ItemModel(
        image: 'assets/images/colors/color_red.png',
        jpName: "Aka",
        enName: "red",
        sound: 'sounds/colors/red.wav'),
    ItemModel(
        image: 'assets/images/colors/color_white.png',
        jpName: "Shiro",
        enName: "white",
        sound: 'sounds/colors/white.wav'),
    ItemModel(
        image: 'assets/images/colors/yellow.png',
        jpName: "Kiiro",
        enName: "yellow",
        sound: 'sounds/colors/yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Colors",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff46332B),
      ),
      body: ListView.builder(
        itemCount: colorList.length,
        itemBuilder: (context, index) {
          return Item(color: const Color(0xff854CAE), number: colorList[index]);
        },
      ),
    );
  }
}
