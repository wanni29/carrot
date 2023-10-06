import 'package:flutter/material.dart';
import 'package:practice_market_app/components/logo.dart';
import 'package:practice_market_app/size.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: xlarge_gap),
              Logo(),
              SizedBox(height: small_gap),
              Text(
                "Carrot",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(height: medium_gap),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/login");
                },
                child: Text(
                  "Welcome to My Page : )",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
