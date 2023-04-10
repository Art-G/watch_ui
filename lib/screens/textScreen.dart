import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:watch_ui/watch_ui.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({Key? key}) : super(key: key);

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
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.0),
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                color: const Color.fromARGB(255, 216, 216, 216)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              child: Text('WText.subheading(\'Your text here\')'),
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
      const WText.headline('Text Styles'),
      const SizedBox(height: 24),
      const WText.headingOne('Heading One'),
      const SizedBox(height: 24),
      const WText.headingTwo('Heading Two'),
      const SizedBox(height: 24),
      const WText.headingThree('Heading Three'),
      const SizedBox(height: 24),
      const WText.headline('Headline'),
      const SizedBox(height: 24),
      const WText.subheading('This will be a sub heading to the headling'),
      const SizedBox(height: 24),
      WText.body('Body Text that will be used for the general body'),
      const SizedBox(height: 24),
      const WText.caption(
          'This will be the caption usually for smaller details'),
      const SizedBox(height: 24),
    ];
