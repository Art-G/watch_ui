import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:watch_ui/src/shared/colors.dart';
import 'package:watch_ui/src/widgets/button.dart';
import 'package:watch_ui/watch_ui.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Watch UI'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        shadowColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const WText.headingTwo('Buttons'),
              const SizedBox(height: 24),
              // TODO: Add code example
              ...buttonWidgets
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> get buttonWidgets => [
      WButton(label: 'label', handler: () => {}),
      const SizedBox(height: 24),
      WButton(
          label: 'label',
          handler: () => {},
          foregroundColor: Colors.white,
          backgroundColor: Colors.black),
      const SizedBox(height: 24),
      WButton(
        label: 'label',
        handler: () => {},
        foregroundColor: kcPrimaryColor,
      ),
    ];
