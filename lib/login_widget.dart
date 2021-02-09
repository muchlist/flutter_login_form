import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final _key = GlobalKey<FormState>();

  // String? _validateEmail(String value) {
  //   if (value.isEmpty) {
  //     return "Field cannot be empty";
  //   } else {
  //     return null;
  //   }
  // }

  // String? _validatePassword(String value) {
  //   if (value.length < 8) {
  //     return "At least 8 chars!";
  //   } else {
  //     return null;
  //   }
  // }

  void _login() {
    if (_key.currentState?.validate() ?? false) {
      debugPrint("Yay! :)");
    } else {
      debugPrint("Error :(");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.email), hintText: "Email"),
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return 'email cant be empty';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.vpn_key), hintText: "Password"),
              obscureText: true,
              validator: (text) {
                if (text == null || text.length < 8) {
                  return 'At least 8 chars!';
                }
                return null;
              },
            ),
            RaisedButton(child: Text("Login"), onPressed: _login),
          ],
        ));
  }
}
