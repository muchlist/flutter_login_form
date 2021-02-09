import 'package:flutter/material.dart';

import 'login_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: const Text("Login Form"),
        ),
        body: LayoutBuilder(
          builder: (context, dimensions) {
            final width = dimensions.maxWidth / 1.5; // _getWidth();
            final height = dimensions.maxHeight / 2; // getHeight();
            return Center(
              child: ConstrainedBox(
                  constraints:
                      BoxConstraints(minHeight: height, maxWidth: width),
                  child: LoginForm()),
            );
          },
        ),
      ),
    );
  }
}
