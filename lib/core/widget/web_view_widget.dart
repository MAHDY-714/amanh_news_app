import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewBody extends StatefulWidget {
  const WebViewBody({super.key, required this.url});
  final String? url;

  @override
  State<WebViewBody> createState() => _WebViewBodyState();
}

class _WebViewBodyState extends State<WebViewBody> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url ?? ''));
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: controller);
  }
}
