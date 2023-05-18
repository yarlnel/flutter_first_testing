import 'package:flutter/material.dart';

class MyFlexible extends StatelessWidget  {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Row and column'),
      ),
      body: Container(
        color: Colors.grey,
        child: Row(

          // Control free space in main axis
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            BiggerColorBox(),
            /*
              Without flex parent, text into color box will not scaled
              Also if we have some widget without w/h and use flex
              they are fill free space
             */
            Flexible(
                // Must use free space
                fit: FlexFit.tight,

                // match 2 virtual columns
                flex: 2,

                child: ColorBox()
            ),
            // Analog of flexible with tight fit param

            const SizedBox(width: 40),

            Expanded(
                flex: 1,
                child: ColorBox()
            ),
            
            const Spacer(flex: 2),
          ],
        ),
      ));
}

class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
    height: 80,
    decoration: BoxDecoration(
      color: Colors.redAccent,
      border: Border.all(),
    ),
    padding: const EdgeInsets.all(8),
      // child: const Text('1 2 3 4 5'),
  );
}

class BiggerColorBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Container(
    width: 40,
    height: 80,
    decoration: BoxDecoration(
      color: Colors.green[500],
      border: Border.all(),
    ),
  );
}
