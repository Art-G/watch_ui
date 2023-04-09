import 'package:flutter/material.dart';
import 'package:watch_ui/screens/buttonScreen.dart';
import 'package:watch_ui/screens/cardScreen.dart';
import 'package:watch_ui/screens/textScreen.dart';
import 'package:watch_ui/src/widgets/button.dart';
import 'package:watch_ui/src/widgets/card.dart';
import 'package:watch_ui/watch_ui.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Watch UI'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        shadowColor: Colors.transparent,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('Text Styles'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TextScreen()),
                );
              },
            ),
            ListTile(
              title: const Text('Buttons'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ButtonScreen()),
                );
              },
            ),
            ListTile(
              title: const Text('Cards'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CardScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
        children: [
          const Center(
            child: BoxText.headingOne('Design System'),
          ),
          const BoxText.headingTwo('Text Styles'),
          const SizedBox(height: 24),
          const BoxText.headingTwo('Buttons'),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  width: 300, child: WButton(label: 'label', handler: () => {}))
            ],
          ),
          const SizedBox(height: 24),
          const BoxText.headingTwo('Card'),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              WCard(
                id: 1,
                image: Image.asset('assets/images/neon.jpg'),
                highlight: 'Highlight',
                tapHandler: () {},
                action: WAction(label: 'Action', handler: () {}),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
