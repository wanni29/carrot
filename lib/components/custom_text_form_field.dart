import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_market_app/size.dart';

class CustomTextFormField extends StatelessWidget {
  final validate;
  final String text;
  bool isPassword;

  CustomTextFormField(
      {required this.text, required this.validate, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        const SizedBox(height: medium_gap),
        TextFormField(
          validator: validate,
          obscureText: isPassword,
          decoration: InputDecoration(
            // suffixIcon: Icon(Icons.visibility_off_rounded),
            hintText: "Enter $text",
            enabledBorder: UnderlineInputBorder(
              // 3. 기본 TextFormField 디자인
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              // 4. 손가락 터치시 TextFormField 디자인
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              // 5. 에러발생시 TextFormField 디자인
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              // 5. 에러가 발생 후 손가락을 터치했을 때 TextFormField 디자인
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
