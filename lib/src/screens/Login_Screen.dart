import 'package:flutter/material.dart';
import 'package:form_validation/src/mixins/validate_mixin.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin {
  var formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            raisedButton(),
          ],
        ),
      ),
    );
  }

  emailField() {
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'E-mail',
        ),
        validator: validateEmail,
        onSaved: (String value) {
          return email = value;
        });
  }

  passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
      ),
      obscureText: true,
      validator: validatePassword,
      onSaved: (String value) {
        return password = value;
      },
    );
  }

  raisedButton() {
    return ElevatedButton(
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print('this is E-mail:$email and this is Password:$password');
        }
      },
      child: Text('Submit'),
    );
  }
}
