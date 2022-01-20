import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/Itemsclass.dart';

class Numberscreen extends StatefulWidget {
  Numberscreen({Key? key}) : super(key: key);

  @override
  _NumberscreenState createState() => _NumberscreenState();
}

class _NumberscreenState extends State<Numberscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(67, 47, 36, 1.0),
        title: Text(
          'NUMBERS',
        ),
      ),
      body: ListView.builder(
        itemBuilder: (Context, index) {
          return Numberlist(numbers[index]);
        },
        itemCount: numbers.length,
      ),
    );
  }
}

class Numberlist extends StatelessWidget {
  @required
  String? enName;
  @required
  String? jpName;
  @required
  String? image;
  Numberlist(this.number);
  final Item number;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(250, 149, 48, 1.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 80,
                color: Color.fromRGBO(255, 243, 222, 1.0),
                child: Image.asset(number.image),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      number.enName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      number.jpName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                child: IconButton(
                  onPressed: () {
                    try {
                      AudioCache player =
                          AudioCache(prefix: 'assets/sounds/numbers/');
                      player.play(number.sound);
                    } catch (ex) {
                      print(ex);
                    }
                  },
                  icon: Icon(Icons.play_circle),
                  iconSize: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

List<Item> numbers = [
  Item(
    sound: 'number_one_sound.mp3',
    jpName: 'ichi',
    enName: 'one',
    image: 'assets/images/numbers/number_one.png',
  ),
  Item(
    sound: 'number_two_sound.mp3',
    jpName: 'Ni',
    enName: 'two',
    image: 'assets/images/numbers/number_two.png',
  ),
  Item(
    sound: 'number_three_sound.mp3',
    jpName: 'San',
    enName: 'three',
    image: 'assets/images/numbers/number_three.png',
  ),
  Item(
    sound: 'number_four_sound.mp3',
    jpName: 'Shi',
    enName: 'four',
    image: 'assets/images/numbers/number_four.png',
  ),
  Item(
    sound: 'number_five_sound.mp3',
    jpName: 'Go',
    enName: 'five',
    image: 'assets/images/numbers/number_five.png',
  ),
  Item(
    sound: 'number_six_sound.mp3',
    jpName: 'Roku',
    enName: 'six',
    image: 'assets/images/numbers/number_six.png',
  ),
  Item(
    sound: 'number_seven_sound.mp3',
    jpName: 'Sebun',
    enName: 'seven',
    image: 'assets/images/numbers/number_seven.png',
  ),
  Item(
    sound: 'number_eight_sound.mp3',
    jpName: 'hachi',
    enName: 'eight',
    image: 'assets/images/numbers/number_eight.png',
  ),
  Item(
    sound: 'number_nine_sound.mp3',
    jpName: 'Kyū',
    enName: 'nine',
    image: 'assets/images/numbers/number_nine.png',
  ),
  Item(
    sound: 'number_ten_sound.mp3',
    jpName: 'Jū',
    enName: 'ten',
    image: 'assets/images/numbers/number_ten.png',
  ),
];
