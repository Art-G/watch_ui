import 'package:flutter/material.dart';
import 'package:watch_ui/screens/textScreen.dart';
import 'package:watch_ui/watch_ui.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Watch UI'), backgroundColor: Colors.transparent, foregroundColor: Colors.black, shadowColor: Colors.transparent,),
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
          ],
        ),
      ),
      body: ListView(padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
      children: const [
        Center(child: BoxText.headingOne('Design System'),),
        BoxText.headingTwo('Text Styles'),
        SizedBox(height: 24),
        BoxText.headingTwo('Card'),
        SizedBox(height: 24),
      ],),
    );
  }
}
