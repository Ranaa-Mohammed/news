import 'package:flutter/material.dart';

class NewText extends StatelessWidget {
  const NewText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text('Helllllo ', style: TextStyle(color: Colors.teal, fontSize: 30),),
        ],
      ),
    );
  }
}
