import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/Itemsclass.dart';

class Familymember extends StatefulWidget {
  const Familymember({Key? key}) : super(key: key);

  @override
  _FamilymemberState createState() => _FamilymemberState();
}

class _FamilymemberState extends State<Familymember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(67, 47, 36, 1.0),
        title: Text(
          'Family-Member',
        ),
      ),
      body: ListView.builder(
        itemBuilder: (Context, index) {
          return Familylist(
            family[index],
          );
        },
        itemCount: family.length,
      ),
    );
  }
}

class Familylist extends StatelessWidget {
  @required
  String? enName;
  @required
  String? jpName;
  @required
  String? image;
  Familylist(this.family);
  final Item family;

  Color fcolor = Color.fromRGBO(83, 128, 51, 1.0);
  Color ncolor = Color.fromRGBO(250, 149, 48, 1.0);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(83, 128, 51, 1.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 80,
                color: Color.fromRGBO(255, 243, 222, 1.0),
                child: Image.asset(family.image),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      family.enName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      family.jpName,
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
                          AudioCache(prefix: 'assets/sounds/family_members/');
                      player.play(family.sound);
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
