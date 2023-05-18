// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class PopularWidgetsColumn extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Popular widgets'),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 30,
          child: const Text(
            'Dart!',
            style: TextStyle(
              fontSize: 22,
              color: Colors.green,
            ),
            softWrap: false,
            overflow: TextOverflow.fade,
          ),
        ),
        const Icon(
          Icons.favorite,
          size: 20,
          color: Colors.red,
        ),
        Image.network("https://upload.wikimedia.org/wikipedia/commons/c/c6/Dart_logo.png"),
      ],
    ),
  );
}