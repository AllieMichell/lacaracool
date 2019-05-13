import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'Caracola Mágica', home: CaracolaMagica(),));
}

class CaracolaMagica extends StatefulWidget {
  @override
  _CaracolaMagicaSimpleState createState() => _CaracolaMagicaSimpleState();
}
class _CaracolaMagicaSimpleState extends State<CaracolaMagica> {
  Answers _selectedAnswer = answers[0];
  void _selected(Answers answer) {
    setState(() {
     _selectedAnswer = answer; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[800],
        // appBar: AppBar(
        //   title: Text('La Caracola Mágica'),
        //   backgroundColor: Colors.purple[900],
        // ),
        body: Center(
          child: ClipRect(
            child: Container(
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/sea.png'),
                ),
              ),
              child: FlatButton(
                padding: EdgeInsets.all(0.0),
                onPressed: () {
                  // debugPrint('button clicked');
                  // API to get random data
                  // new Text('No!');
                  _selected(answers[3]);
                },
                child: randomAnswer(answer: _selectedAnswer),
                // child: Text(
                //   ('Nooo!'),
                //   style: new TextStyle(rfontSize: 50.0, fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic)
                // ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class FlightImagesAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/sea.png');
    Image image = Image(image: assetImage);
    return Container(child: image,);
  }
}
// FlightImagesAsset(); --> Forma de guardarlo 

class Answers {
  const Answers({this.title});
  final String title;
}

const List<Answers> answers = const <Answers>[
  const Answers(title: 'Probablemente'),
  const Answers(title: 'Si!'),
  const Answers(title: 'No'),
  const Answers(title: 'Nooo!'),
  const Answers(title: 'No lo creo'),
  const Answers(title: 'Prueba preguntando nuevamente'),
  const Answers(title: 'No veo la hora de que te pongas a jalar!'),
];

class randomAnswer extends StatelessWidget{
  const randomAnswer({Key key, this.answer}) : super(key:key);
  final Answers answer;

  @override
  Widget build(BuildContext context){
    return Container(
      child: Center(
        child: Text(
          (answer.title),
          style: new TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic)
        ),
      ),
    );
  }
}