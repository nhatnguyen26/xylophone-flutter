import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  Expanded buildContainer(Color color, int noteToPlay) {
    return Expanded(
        child: FlatButton(
      color: color,
      onPressed: () {
        player.play('note$noteToPlay.wav');
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildContainer(Colors.red, 1),
            buildContainer(Colors.orange, 2),
            buildContainer(Colors.yellow, 3),
            buildContainer(Colors.lightGreen, 4),
            buildContainer(Colors.teal, 5),
            buildContainer(Colors.blue, 6),
            buildContainer(Colors.purple, 7),
          ],
        )),
      ),
    );
  }
}
