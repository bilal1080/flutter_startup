import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              children: <Widget>[
                SizedBox(height: 20,),
                Text(questions.elementAt(0)),
                ElevatedButton(
                    onPressed: (){
                      print("1st butoon is pressed");
                    },
                    child: Text("Answer"),

                ),
                SizedBox(height: 20,),
                Text(questions.elementAt(1)),
                ElevatedButton(
                  onPressed: (){
                    print("2nd butoon is pressed");
                  },
                  child: Text("Answer"),
                ),
                SizedBox(height: 20,),
                Text(questions.elementAt(2)),
                ElevatedButton(
                  onPressed: (){
                    print("3rd butoon is pressed");
                  },
                  child: Text("Answer"),
                ),

              ],

            ),
        ),
        ),

    );
  }
  var questions= [
    'what is your name?',
    'whats is your hobey?',
    'what is your religion?',
  ];

}