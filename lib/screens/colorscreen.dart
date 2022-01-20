import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/Itemsclass.dart';

class Colorscreen extends StatefulWidget {
  const Colorscreen({Key? key}) : super(key: key);

  @override
  _ColorscreenState createState() => _ColorscreenState();
}

class _ColorscreenState extends State<Colorscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(67, 47, 36, 1.0),
        title: Text(
          'Colors',
        ),
      ),
      body: ListView.builder(
        itemBuilder: (Context, index) {
          return Colorslist(
            colors[index],
          );
        },
        itemCount: colors.length,
      ),
    );
  }
}

class Colorslist extends StatelessWidget {
  @required
  String? enName;
  @required
  String? jpName;
  @required
  String? image;
  Colorslist(this.colors);
  final Item colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(126, 63, 163, 1.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 80,
                color: Color.fromRGBO(255, 243, 222, 1.0),
                child: Image.asset(colors.image),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      colors.enName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      colors.jpName,
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
                          AudioCache(prefix: 'assets/sounds/colors/');
                      player.play(colors.sound);
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
