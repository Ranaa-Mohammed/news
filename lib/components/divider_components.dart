import 'package:flutter/material.dart';

class DividerComponents extends StatelessWidget {
  const DividerComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return  Divider(
      height: 1.0,
      thickness: 0.5,
      //color: Colors.white,
      endIndent: 20,
      indent: 20,
    );
  }
}
