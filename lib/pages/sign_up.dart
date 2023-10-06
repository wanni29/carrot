import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_market_app/components/custom_end_service.dart';
import 'package:practice_market_app/components/custom_form_sign.dart';
import 'package:practice_market_app/components/custom_header.dart';
import 'package:practice_market_app/components/custom_terms_of_service.dart';
import 'package:practice_market_app/components/logo.dart';
import 'package:practice_market_app/size.dart';

class SignUp extends StatelessWidget {
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
            CustomHeader("Sign Up", "Enter your credenitials to continue"),
            SizedBox(height: 30),
            CustomFormSign(),
            SizedBox(height: 30),
            CustomEndService(
                "Already have an account?",
                "Login", // 3번째 매개변수는 컨트롤러의 엔드포인트와 동일하게 보내야합니다.
                "login"),
          ],
        ),
      ),
    );
  }
}
