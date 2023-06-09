import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.deepPurpleAccent,
      title: const Text("Luis Douglas"),
      leading: Padding(
        padding: const EdgeInsets.all(8),
        child: CircleAvatar(
          radius: 56,
          backgroundColor: Colors.purple[100],
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: ClipOval(
                child: Image.network(
                    'https://avatars.githubusercontent.com/u/83516404?v=4%27')),
          ),
        ),
      ),
      actions: [
        IconButton.filled(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
      ],
    );
  }
}
