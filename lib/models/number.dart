import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  String image;
  String jpName;
  String enName;
  String sound;

  ItemModel(
      {required this.image,
      required this.jpName,
      required this.enName,
      required this.sound});

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
  //either its required in the constructor or nullabe(String? image)
}
