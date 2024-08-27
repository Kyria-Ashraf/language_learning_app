import 'package:flutter/material.dart';
import 'package:language_learning_app/components/phrases_item.dart';
import 'package:language_learning_app/models/phrase.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});

  final List<PhraseModel> phrasesList = [
    PhraseModel(
        enPhrase: "what is your name?",
        jpPhrase: "Anata no namae wa nanidesu ka?",
        sound: 'sounds/phrases/what_is_your_name.wav'),
    PhraseModel(
        enPhrase: "how are you feeling?",
        jpPhrase: "Go kibun wa ikagadesu ka?",
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    PhraseModel(
        enPhrase: "where are you going?",
        jpPhrase: "Doko ni iku no?",
        sound: 'sounds/phrases/where_are_you_going.wav'),
    PhraseModel(
        enPhrase: "are you coming?",
        jpPhrase: "Kimasu ka?",
        sound: 'sounds/phrases/are_you_coming.wav'),
    PhraseModel(
        enPhrase: "yes I'm coming",
        jpPhrase: "Hai, ikimasu",
        sound: 'sounds/phrases/yes_im_coming.wav'),
    PhraseModel(
        enPhrase: "I love programming",
        jpPhrase: "Puroguramingu ga daisukidesu",
        sound: 'sounds/phrases/i_love_programming.wav'),
    PhraseModel(
        enPhrase: "programming is easy",
        jpPhrase: "Puroguramingu wa kantandesu",
        sound: 'sounds/phrases/programming_is_easy.wav'),
    PhraseModel(
        enPhrase: "I love anime",
        jpPhrase: "Watashi wa anime ga daisukidesu",
        sound: 'sounds/phrases/i_love_anime.wav'),
    PhraseModel(
        enPhrase: "don't forget to subscribe",
        jpPhrase: "Kōdoku suru koto o wasurenaide kudasai",
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Phrases",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff46332B),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
              color: const Color(0xff51B0D5), phrase: phrasesList[index]);
        },
      ),
    );
  }
}
