import 'package:flutter/material.dart';
import 'package:hello_world/screen/UandI.dart';
import 'package:hello_world/screen/image_carousel.dart';
import 'package:hello_world/screen/statefulwidet_lifecycle.dart';
import 'package:hello_world/screen/statefulwidget.dart';
import 'package:hello_world/screen/statelesswidget_lifecycle.dart';
import 'package:hello_world/screen/web_view.dart';
import 'package:hello_world/screen/rowColumn.dart';
import 'package:hello_world/screen/padding_theory.dart';

void main() {

  // Flutter 프레임워크가 실행할 준비가 될때가지 기다린다.
  WidgetsFlutterBinding.ensureInitialized();

  // 플러터 앱을 실행한다.
  runApp(
    MaterialApp(
      // home: rowcolumn(),
      // home: padding_theory(),
      // home: web_view()
      // home: Statefulwidget()
      // home: Statelesswidget_lifecyle()
      // home: Statefulwidet_lifecyle()
      // home: Image_carousel(),
      home: UandI()
    )
  );
}

