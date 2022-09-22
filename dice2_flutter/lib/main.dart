import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text(
            'Dicee  ',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black54,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDignum = 1;
  int rightDignum = 1;
  //void changeDiceFace(){
  // setState(() {
  //leftDignum = Random().nextInt(6) + 1;
  // rightDignum = Random().nextInt(6) + 1;
  // });
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  //changeDiceFace();
                  setState(() {
                    leftDignum = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$leftDignum.png'),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.limeAccent),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  //changeDiceFace();
                  setState(() {
                    rightDignum = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$rightDignum.png'),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.limeAccent),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
