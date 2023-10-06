import 'package:flutter/material.dart';

class CustomPasswordForgot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: InkWell(
        onTap: () {
          print("비밀번호 찾아주는 홈페이지로 이동하는 코드!");
        },
        child: Text(
          "Password forgot?",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
