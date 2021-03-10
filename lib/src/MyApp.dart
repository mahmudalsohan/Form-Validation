import 'package:flutter/material.dart';
import 'package:form_validation/src/screens/Login_Screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Validation'),
        ),
        body: LoginScreen(),
      ),
    );
  }
}
