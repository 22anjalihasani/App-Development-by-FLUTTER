import 'package:flutter/material.dart';

//the main function is the starting point for all flutter apps
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I am Rich'),
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/diamond.png'), //NetworkImage(
            //'https://media-exp1.licdn.com/dms/image/C4D03AQHFsFw4sbqrqg/profile-displayphoto-shrink_800_800/0/1645451183345?e=1659571200&v=beta&t=3w43kRADM1GCOVS3FpkcpG8HTo0g1laBrXYYdOe5PC8'),
          ),
        ),
      ),
    ),
  );
}
