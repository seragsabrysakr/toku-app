import 'package:toku_app/screens/pharsescreen.dart';

class Phrases {
  String sound;
  String enName;
  String jpName;
  Phrases({required this.jpName, required this.enName, required this.sound});
}

List<Phrases> pharses = [
  Phrases(
    sound: 'dont_forget_to_subscribe.wav',
    jpName: 'Kōdoku suru koto o wasurenaide kudasai',
    enName: 'dont forget to subscribe',
  ),
  Phrases(
    sound: 'i_love_programming.wav',
    jpName: 'Watashi wa puroguramingu daisukidesu',
    enName: 'i love  programming',
  ),
  Phrases(
    sound: 'programming_is_easy.wav',
    jpName: 'Puroguramingu wa kantandesu ',
    enName: 'programming is easy',
  ),
  Phrases(
    sound: 'where_are_you_going.wav',
    jpName: 'Doko ni iku no',
    enName: 'where are you going',
  ),
  Phrases(
    sound: 'what_is_your_name.wav',
    jpName: 'Namae wa nandesu ka',
    enName: 'what is your name ?',
  ),
  Phrases(
    sound: 'i_love_anime.wav',
    jpName: 'Watashi wa anime ga daisukidesu',
    enName: 'i love anime',
  ),
  Phrases(
    sound: 'how_are_you_feeling.wav',
    jpName: 'Go kibun wa ikagadesu ka',
    enName: 'how are you feeling?',
  ),
  Phrases(
    sound: 'are_you_coming.wav',
    jpName: 'Kimasu ka',
    enName: 'are you coming?',
  ),
  Phrases(
    sound: 'yes_im_coming.wav',
    jpName: 'Hai watashi wa kite imasu',
    enName: 'yes i am coming',
  ),
];
