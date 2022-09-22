import 'package:flutter/material.dart';
import 'package:login_screen_ieee/pages/login.dart';
import 'package:login_screen_ieee/pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
initialRoute:loginscreen.route,
        routes: {
          loginscreen.route: (context) => loginscreen(),
          signupscreen.route: (context) => signupscreen(),
        }
    );

  }

}

