import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random Words Generator'),
        ),
        body: Randomword(),
      ),
    );
  }

}
class Randomword extends StatefulWidget {
  @override
  _RandomwordState createState() => _RandomwordState();
}

class _RandomwordState extends State<Randomword> {
  final _suggestions = <WordPair>[];
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return _buildSuggestions();
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: 20,
        itemBuilder: (context, i) {
          if (i.isOdd) return const Divider();

          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asCamelCase,
        style: TextStyle(
          fontSize: 18.0
        ),
      ),
    );
  }
}
