import 'package:flutter/material.dart';
import 'package:practice_market_app/size.dart';

class CustomTextFormFieldPassword extends StatefulWidget {
  final textController;
  final validate;
  final String text;

  CustomTextFormFieldPassword(
      {required this.text, required this.validate, this.textController});

  @override
  _CustomTextFormFieldPasswordState createState() =>
      _CustomTextFormFieldPasswordState();
}

class _CustomTextFormFieldPasswordState
    extends State<CustomTextFormFieldPassword> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.text),
        const SizedBox(height: medium_gap),
        TextFormField(
          controller: widget.textController,
          validator: widget.validate,
          obscureText: !isPasswordVisible,
          decoration: InputDecoration(
            hintText: "Enter ${widget.text}",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            // 눈 모양의 아이콘 추가
            suffixIcon: IconButton(
              icon: Icon(
                isPasswordVisible ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
