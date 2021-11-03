import 'package:flutter/material.dart';

class Appdrawer extends StatelessWidget {
  const Appdrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(onTap: () {}, child: Text("Drawer Item")),
          )
        ],
      ),
    );
  }
}
