import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        "assets/carrot.png",
        height: 150,
        width: 150,
      ),
    );
  }
}
