import 'package:flutter/material.dart';
import 'package:practice_market_app/components/custom_end_service.dart';
import 'package:practice_market_app/components/custom_form_login.dart';
import 'package:practice_market_app/components/custom_header.dart';
import 'package:practice_market_app/components/custom_text_form_field.dart';
import 'package:practice_market_app/components/logo.dart';
import 'package:practice_market_app/size.dart';

class Loging extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: large_gap),
        child: ListView(
          children: [
            SizedBox(height: large_gap),
            Logo(),
            SizedBox(height: large_gap),
            CustomHeader("Loging", "Enter your emails and password"),
            SizedBox(height: 40),
            CustomFormLogin("Log in"),
            SizedBox(height: large_gap),
            CustomEndService("Don't have an account?", "SignUp",
                "sign"), // 3번째 매개변수는 컨트롤러의 엔드포인트와 동일하게 보내야합니다.
          ],
        ),
      ),
    );
  }
}
