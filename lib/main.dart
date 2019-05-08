import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'Caracola Mágica', home: FirstRoute(),));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      appBar: AppBar(
        title: Text('First Route'),
        backgroundColor: Colors.deepOrange[400],
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Second route'),
          onPressed: () {
            // Navigate to second route when tapped. 
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondRoute()),);
          }
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      appBar: AppBar(
        title: Text('Second Route'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Third route'),
          onPressed: () {
            // Navigate to third route tapper
            Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdRoute()),);
          }
        ),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        title: Text('Third Route'),
        backgroundColor: Colors.lightGreen[600],
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
