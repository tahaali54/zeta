import 'package:flutter/material.dart';
import 'package:zeta/login_page.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color.fromARGB(255, 128, 30, 103),
  ));
  return runApp(Zeta());
}

class Zeta extends StatelessWidget {
  Color _primaryColor = Color.fromARGB(255, 128, 30, 103);
  Color _accentColor = Color.fromARGB(255, 244, 182, 7);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TPS Zeta",
      home: LoginPage(),
      theme: ThemeData(
          primaryColor: _primaryColor,
          accentColor: _accentColor,
          buttonColor: _primaryColor,
          inputDecorationTheme:
              InputDecorationTheme(border: UnderlineInputBorder())),
    );
  }
}
