import 'package:flutter/material.dart';

class BBNotFoundView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Center(
          child: Text("The page you are looking for is undefine."),
        ),
      ),
    );
  }
}
