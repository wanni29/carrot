import 'package:flutter/material.dart';
import 'package:practice_market_app/size.dart';

class CustomHeader extends StatelessWidget {
  final String title;
  final String content;

  const CustomHeader(this.title, this.content);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            "$title",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
        ),
        SizedBox(height: medium_gap),
        Container(
          child: Text(
            "$content",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
          ),
        ),
      ],
    );
  }
}
