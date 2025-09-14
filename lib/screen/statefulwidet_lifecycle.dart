import 'package:flutter/material.dart';

class Statefulwidet_lifecyle extends StatefulWidget {
  const Statefulwidet_lifecyle({super.key});

  @override
  State<Statefulwidet_lifecyle> createState() => _Statefulwidet_lifecyleState();
}

class _Statefulwidet_lifecyleState extends State<Statefulwidet_lifecyle> {
  bool show = false;
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (show)
              GestureDetector(
                onTap: () {
                  setState(() {
                    color = color == Colors.red ? Colors.blue : Colors.red;
                  });
                },
                child: CodeFactoryWidget(color: color),
              ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  show = !show;
                });
              },
              child: Text('클릭해서 보이기/안보이기!'),
            ),
          ],
        ),
      ),
    );
  }
}

class CodeFactoryWidget extends StatefulWidget {
  final Color color;

  CodeFactoryWidget({required this.color, super.key}) {
    print('1) Stateful Widget Constructor');
  }

  @override
  State<CodeFactoryWidget> createState() {
    print('2) Stateful Widget createState');
    return _CodeFactoryWidgetState();
  }
}

class _CodeFactoryWidgetState extends State<CodeFactoryWidget> {
  @override
  void initState() {
    print('3) Stateful Widget initState');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('4) Stateful Widget didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('5) Stateful Widget build');
    return Container(width: 50.0, height: 50.0, color: widget.color);
  }

  @override
  void deactivate() {
    print('6) Stateful Widget didChangeDependencies');
    super.deactivate();
  }

  @override
  void dispose() {
    print('7) Stateful Widget dispose');
    super.dispose();
  }
}
