import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm();

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final _key = GlobalKey<FormState>();
  static const maxLength = 20;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _login() {
    if (_key.currentState?.validate() ?? false) {
      final email = emailController.text;
      final password = passwordController.text;

      // final login = LoginClass(user: email, password: password);
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
              maxLength: maxLength,
              decoration: const InputDecoration(
                  // counterText:
                  //     "chars left: ${maxLength - emailController.text.length}",
                  icon: Icon(Icons.email),
                  hintText: "Email"),
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return 'email cant be empty';
                }
                return null;
              },
              controller: emailController,
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
              controller: passwordController,
            ),
            ElevatedButton(child: Text("Login"), onPressed: _login),
          ],
        ));
  }
}
