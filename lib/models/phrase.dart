import 'package:audioplayers/audioplayers.dart';

class PhraseModel {
  String enPhrase;
  String jpPhrase;
  String sound;

  PhraseModel(
      {required this.enPhrase, required this.jpPhrase, required this.sound});

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
