import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => _ImageContainer();
}

class _MyFirstContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('First - Container')),

        /*
    A convenience widget that combines common painting,
    positioning, and sizing  widgets.
    can handle only single child.

    Viewing:
    1) apply transform
    2) apply decoration
    3) add child
    4) apply foreground decoration

    Behavior:
    Without child subj take up all free space
    With child it w/h
    If alignment parent w/h
     */
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.amber[600],
              // shape: BoxShape.circle,
              border: Border.all(),
            ),
            alignment: Alignment.center,

            // margin: const EdgeInsets.all(80),
            // margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
            // margin: const EdgeInsets.fromLTRB(50, 20, 40, 90),
            margin: const EdgeInsets.only(right: 20),
            padding: const EdgeInsets.all(0),
            child: const Text('Code and Art'),
          ),
        ),
      );
}

class _MySecondContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Sec - Container'),
          backgroundColor: Colors.lightGreen,
        ),
        body: Container(
          color: Colors.lightGreenAccent,
          width: double.infinity,
          // match_parent
          height: 200,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16),
          child: const Text('Some text'),
        ),
      );
}

class _ImageContainer extends StatelessWidget {
  static const MEDIV_URL =
      'https://wow.blizzwiki.ru/images/thumb/2/27/Medivh_Cropped.jpg/200px-Medivh_Cropped.jpg';

  static Image _getImage() => Image.network(MEDIV_URL);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Sec - Container'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 300,
              height: 300,
              margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: _getImage().image,
                  fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(30)
              ),
            ),
          ],
        ),
      )
  );
}
