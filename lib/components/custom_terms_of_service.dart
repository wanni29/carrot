import 'package:flutter/material.dart';

class CustomTermsOfService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              child: Text("By continuing you agree to our"),
            ),
            InkWell(
              onTap: () {
                print("Term of Service 버튼에 해당 되는 로직");
              },
              child: Text(
                "Terms of Service",
                style: TextStyle(color: Colors.green),
              ),
            )
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Container(
              child: Text("and "),
            ),
            Container(
              child: InkWell(
                onTap: () {
                  print("Privacy Policy에 해당되는 로직으로 이동!");
                },
                child: Text(
                  "Privacy Policy",
                  style: TextStyle(color: Colors.green),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
