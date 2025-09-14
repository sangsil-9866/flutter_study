import 'package:flutter/material.dart';

class Statelesswidget_lifecyle extends StatelessWidget {
  const Statelesswidget_lifecyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SangsilWidget(),
    );
  }
}

class SangsilWidget extends StatelessWidget {
  SangsilWidget({super.key}){
    print('--- 생성자 ---');
  }

  @override
  Widget build(BuildContext context) {

    print('--- 빌드 ---');

    return Container(
      width: 50.0,
      height: 50.0,
      color: Colors.red,
    );
  }
}

