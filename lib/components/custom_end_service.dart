import 'package:flutter/material.dart';

class CustomEndService extends StatelessWidget {
  String endPoint;
  String text;
  String buttonText;
  final _formKey = GlobalKey<FormState>();

  CustomEndService(this.text, this.buttonText, this.endPoint);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Text(
            "$text",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(width: 10),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/$endPoint");
          },
          child: Text(
            "$buttonText",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w600, color: Colors.green),
          ),
        ),
      ],
    );
  }
}
