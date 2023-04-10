import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:watch_ui/src/widgets/card.dart';
import 'package:watch_ui/watch_ui.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Watch UI'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        shadowColor: Colors.transparent,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
        children: [
          const SizedBox(
            height: 30,
          ),
          const WText.headingTwo('Card'),
          const SizedBox(height: 24),
          // TODO: Add code example
          Container(
            height: 400,
            child: ListView(
              // physics: const PageScrollPhysics(),
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                WCard(
                  id: 1,
                  image: Image.asset('assets/images/neon.jpg'),
                  highlight: 'Highlight',
                  tapHandler: () {},
                  action: WAction(label: 'Action', handler: () {}),
                ),
                WCard(
                  id: 1,
                  image: Image.asset('assets/images/neon.jpg'),
                  tapHandler: () {},
                  action: WAction(label: 'Action', handler: () {}),
                ),
                WCard(
                  id: 1,
                  image: Image.asset('assets/images/neon.jpg'),
                  highlight: 'Highlight',
                  tapHandler: () {},
                ),
                WCard(
                  id: 1,
                  image: Image.asset('assets/images/neon.jpg'),
                  tapHandler: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
