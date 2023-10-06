import 'package:flutter/material.dart';
import 'package:practice_market_app/pages/loging.dart';
import 'package:practice_market_app/pages/sign_up.dart';
import 'package:practice_market_app/pages/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: TextStyle(fontSize: 18),
            minimumSize: const Size(400, 60),
            backgroundColor: Colors.green,
            primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/welcome", // 첫페이지가 홈페이지
      routes: {
        "/login": (context) => Loging(),
        "/sign": (context) => SignUp(),
        "/welcome": (context) => Welcome(),
      },
    );
  }
}
