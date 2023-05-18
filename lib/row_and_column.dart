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
          /*
          handle row width:
            min = wrap_content
            max = match_parent
          */
          mainAxisSize: MainAxisSize.max,

          // Control free space in main axis
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          // Control free space in secondary axis
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            ColorBox(),
            BiggerColorBox(),
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
