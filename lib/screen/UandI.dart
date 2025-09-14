import 'package:flutter/material.dart';

class UandI extends StatelessWidget {
  const UandI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        bottom: false,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        'U&I',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'parisienne',
                          fontSize: 80,
                        ),
                      ),
                      Text(
                        '우리 처음 만난 날',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'sunflower',
                          fontSize: 30,
                        ),
                      ),
                      IconButton(
                        iconSize: 60,
                        color: Colors.red,
                        onPressed: () {},
                        icon: Icon(Icons.favorite),
                      ),
                      Text(
                        'D+1',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'sunflower',
                          fontSize: 50.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '2025.09.14',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'sunflower',
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.asset('asset/img/middle_image.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
