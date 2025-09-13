import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://naver.com');

class web_view extends StatelessWidget {
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(homeUrl);

  web_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('na sangsil'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              print('Pressed');
              controller.loadRequest(homeUrl);
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
