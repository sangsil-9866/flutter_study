import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Statefulwidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StatefulwidgetState();
}

class _StatefulwidgetState extends State<StatefulWidget>{
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {

    print('빌드 실행!');

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              if(color == Colors.blue){
                color = Colors.red;
              }else{
                color = Colors.blue;
              }
              print('색상변경: color: $color');
              setState(() {});
            }, child: Text(
              '색상 변경!',
            )),
            SizedBox(height: 32.0,),
            Container(
              width: 50.0,
              height: 50.0,
              color: color,
            )
          ],
        ),
      ),
    );
  }
}

