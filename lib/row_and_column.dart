import 'package:flutter/material.dart';

class RowAndColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Row and column'),
      ),
      body: Container(
        color: Colors.grey,
        child: Row(
          children: [
            ColorBox(),
            ColorBox(),
            ColorBox(),
          ],
        ),
      ));
}

class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.redAccent,
          border: Border.all(),
        ),
      );
}

class BiggerColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        width: 80,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.redAccent,
          border: Border.all(),
        ),
      );
}
