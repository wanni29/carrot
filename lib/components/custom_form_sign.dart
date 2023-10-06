import 'package:flutter/material.dart';
import 'package:practice_market_app/components/custom_password_forgot.dart';
import 'package:practice_market_app/components/custom_terms_of_service.dart';
import 'package:practice_market_app/components/custom_text_form_field.dart';
import 'package:practice_market_app/size.dart';
import 'package:practice_market_app/validator_util.dart';

class CustomFormSign extends StatelessWidget {
  final _formKey =
      GlobalKey<FormState>(); // 글로벌 키는 문맥이라고 생각하면돼 약간 BuildContext 와 비슷한 역할

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(text: "Username", validate: validateUsername()),
          SizedBox(height: large_gap),
          CustomTextFormField(text: "Email", validate: validateEmail()),
          SizedBox(height: large_gap),
          CustomTextFormField(text: "Password", validate: validatePassword()),
          SizedBox(height: large_gap),
          CustomTermsOfService(),
          TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // _formKey -> 폼에 대한 모든 정보를 다 들고 있다.
                  // validator가 null을 리턴 하면 true 를 발동
                  Navigator.pop(context);
                }
                //  Navigator.pop(context);
              },
              child: Text("Sign up")),
        ],
      ),
    );
  }
}
