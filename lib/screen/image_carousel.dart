import 'package:flutter/material.dart';
import 'dart:async';

class Image_carousel extends StatefulWidget {
  const Image_carousel({super.key});

  @override
  State<Image_carousel> createState() => _Image_carouselState();
}

class _Image_carouselState extends State<Image_carousel> {
  Timer? timer;
  PageController controller = PageController();

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(Duration(seconds: 2), (timer) {
      int currentPage = controller.page!.toInt();
      int nextPage = currentPage + 1;
      if (nextPage > 6) {
        nextPage = 0;
      }

      controller.animateToPage(
        nextPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.linear,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    if (timer != null) {
      timer!.cancel();
    }
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [1, 2, 3, 4, 5, 6, 7]
            .map(
              (item) =>
                  Image.asset('asset/img/img0$item.jpg', fit: BoxFit.cover),
            )
            .toList(),
      ),
    );
  }
}
