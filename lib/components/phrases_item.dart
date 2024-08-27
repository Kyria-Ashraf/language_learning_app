import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:language_learning_app/models/phrase.dart';

// ignore: must_be_immutable
class PhrasesItem extends StatelessWidget {
  PhrasesItem({required this.phrase, this.color, super.key});
  final PhraseModel phrase;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpPhrase,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  phrase.enPhrase,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                phrase.playSound();
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
