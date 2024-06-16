import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primaryColor: Colors.white, 
      ),
      home: CalculatorPage(),
    );
  }
}

class CalculatorPage extends StatelessWidget {
  Widget buildButton(String buttonText, {Color color = const Color.fromARGB(137, 54, 54, 54)}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20.0),
            backgroundColor: color, 
            foregroundColor: Colors.white,// Updated parameter name
            textStyle: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: Text(buttonText),
          onPressed: () {
            // Button press logic will go here
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
          // Set the AppBar title color to white
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
            child: Text(
              "0",
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Divider(color: Colors.black),
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  buildButton("AC", color: Color.fromARGB(255, 153, 152, 152)),
                  buildButton("+/_", color: Color.fromARGB(255, 150, 149, 149)),
                  buildButton("%", color: Color.fromARGB(255, 150, 150, 150)),
                  buildButton("/", color: Colors.orange),
                ],
              ),
              Row(
                children: <Widget>[
                  buildButton("4"),
                  buildButton("5"),
                  buildButton("9"),
                  buildButton("*", color: Colors.orange),
                ],
              ),
              Row(
                children: <Widget>[
                  buildButton("4"),
                  buildButton("5"),
                  buildButton("6"),
                  buildButton("-", color: Colors.orange),
                ],
              ),
              Row(
                children: <Widget>[
                  buildButton("1"),
                  buildButton("2"),
                  buildButton("3"),
                  buildButton("+", color: Colors.orange),
                ],
              ),
              Row(
                children: <Widget>[
                buildButton("0"),
                buildButton("."),
                buildButton("=", color: Colors.orange),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
