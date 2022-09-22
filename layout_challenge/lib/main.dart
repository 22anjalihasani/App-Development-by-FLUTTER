import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        body: SafeArea(
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                //height: 150.00,
                width: 100.00,
                //margin: EdgeInsets.fromLTRB(150.00, 200.00, 30.00, 20.00),
                //padding:EdgeInsets.symmetric(vertical: 30.00, horizontal: 30.00),
                color: Colors.white,
                //child: Text('Anjali'),
              ),
              SizedBox(
                width: 60.00,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100.00,
                    width: 100.00,
                    color: Colors.yellowAccent,
                  ),
                  Container(
                    height: 100.00,
                    width: 100.00,
                    color: Colors.greenAccent,
                  )
                ],
              ),
              SizedBox(
                width: 51.00,
              ),
              Container(
                //height: 0.00,
                width: 100.00,
                color: Colors.cyan,
                //child: Text('Container 2')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
