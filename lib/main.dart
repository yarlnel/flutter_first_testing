import 'package:flut_test/my_flexible.dart';
import 'package:flut_test/popular_widgets.dart';
import 'package:flut_test/row_and_column.dart';
import 'package:flut_test/container_lesson.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: "Quiz",
    theme: ThemeData(primarySwatch: Colors.amber),
    home: PopularWidgetsColumn(),
  );
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('How a u ?'),
    ),
    body: const Center(
        child: Text('This is my app, kurwa !!!')
    ),
  );
}