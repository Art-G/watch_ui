import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:watch_ui/watch_ui.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
        children: [
          const Center(
            child: BoxText.headingOne('Watch UI'),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1.0),
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              color: const Color.fromARGB(255, 216, 216, 216)
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              child: Text('BoxText.subheading(\'Your text here\')'),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ...textWidgets
        ],
      ),
    );
  }
}

List<Widget> get textWidgets => [
      const BoxText.headline('Text Styles'),
      const SizedBox(height: 24),
      const BoxText.headingOne('Heading One'),
      const SizedBox(height: 24),
      const BoxText.headingTwo('Heading Two'),
      const SizedBox(height: 24),
      const BoxText.headingThree('Heading Three'),
      const SizedBox(height: 24),
      const BoxText.headline('Headline'),
      const SizedBox(height: 24),
      const BoxText.subheading('This will be a sub heading to the headling'),
      const SizedBox(height: 24),
      BoxText.body('Body Text that will be used for the general body'),
      const SizedBox(height: 24),
      const BoxText.caption(
          'This will be the caption usually for smaller details'),
      const SizedBox(height: 24),
    ];
