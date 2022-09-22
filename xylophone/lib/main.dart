import 'package:flutter/material.dart';

import 'package:audioplayers_web/audioplayers_web.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  get localFile => null;

  get player => null;

  void playSound(int soundno) async {
    final player = AudioplayersPlugin();
    await player.play('note$soundno.wav');
  }

  Expanded buildKey({required Color color, required int soundno}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () async {
          playSound(soundno);
        },
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        child: Container(
          height: 113.1,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "Xylophone",
            style: TextStyle(
              color: Colors.purpleAccent[300],
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundno: 1),
              buildKey(color: Colors.lightBlueAccent, soundno: 2),
              buildKey(color: Colors.greenAccent, soundno: 3),
              buildKey(color: Colors.yellowAccent, soundno: 4),
              buildKey(color: Colors.orangeAccent, soundno: 5),
              buildKey(color: Colors.indigo, soundno: 6),
              buildKey(color: Colors.teal, soundno: 7),
            ],
          ),
        ),
      ),
    );
  }
}
