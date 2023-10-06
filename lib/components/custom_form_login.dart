import 'package:flutter/material.dart';
import 'package:practice_market_app/components/custom_password_forgot.dart';
import 'package:practice_market_app/components/custom_text_form_field.dart';
import 'package:practice_market_app/size.dart';
import 'package:practice_market_app/validator_util.dart';

class CustomFormLogin extends StatelessWidget {
  final _formKey =
      GlobalKey<FormState>(); // 글로벌 키는 문맥이라고 생각하면돼 약간 BuildContext 와 비슷한 역할

  final String buttonText;

  CustomFormLogin(this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(text: "Email", validate: validateEmail()),
          SizedBox(height: large_gap),
          CustomTextFormField(text: "Password", validate: validatePassword()),
          SizedBox(height: large_gap),
          CustomPasswordForgot(),
          SizedBox(height: large_gap),
          TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate())
                  Navigator.pushNamed(context, "/welcome");
              },
              child: Text("$buttonText")),
        ],
      ),
    );
  }
}
