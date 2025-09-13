import 'package:flutter/material.dart';

class padding_theory extends StatelessWidget {
  const padding_theory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
            child: Container(color: Colors.blue, width: 50.0, height: 50.0),
          ),
        ),
      ),
    );
  }
}
