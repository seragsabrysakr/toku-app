import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/Itemsclass.dart';
import 'package:toku_app/models/phrasesclass.dart';

class Pharsesscreen extends StatefulWidget {
  Pharsesscreen({Key? key}) : super(key: key);

  @override
  _PharsesscreenState createState() => _PharsesscreenState();
}

class _PharsesscreenState extends State<Pharsesscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(67, 47, 36, 1.0),
        title: Text(
          'PHARSES',
        ),
      ),
      body: ListView.builder(
        itemBuilder: (Context, index) {
          return Phraseswidget(pharses[index]);
        },
        itemCount: pharses.length,
      ),
    );
  }
}

class Phraseswidget extends StatelessWidget {
  @required
  String? enName;
  @required
  String? jpName;
  @required
  String? image;
  Phraseswidget(this.pharses);
  final Phrases pharses;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(72, 165, 204, 1.0),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pharses.enName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      pharses.jpName,
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
                          AudioCache(prefix: 'assets/sounds/phrases/');
                      player.play(pharses.sound);
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
