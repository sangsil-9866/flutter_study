import 'package:flutter/material.dart';
import 'package:hello_world/const/colors.dart';

class rowcolumn extends StatelessWidget {
  const rowcolumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(color: Colors.red, width: 50.0, height: 50.0),
                Container(color: Colors.orange, width: 50.0, height: 50.0),
                Container(color: Colors.yellow, width: 50.0, height: 50.0),
                Container(color: Colors.green, width: 50.0, height: 50.0),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(color: Colors.orange, width: 50.0, height: 50.0),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: colors
                  .map(
                    (item) => Container(height: 50.0, width: 50.0, color: item),
                  )
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(color: Colors.green, width: 50.0, height: 50.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
