import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class DetailView extends StatefulWidget {
  final String newsUrl; // Add 'final' here

  const DetailView({Key? key, required this.newsUrl})
      : super(key: key); // Update super(key: key)

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  late InAppWebViewController inAppWebViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News App"),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: WebUri.uri(
            Uri.parse(widget.newsUrl),
          ),
        ),
        onWebViewCreated: (controller) {
          setState(() {
            inAppWebViewController = controller;
          });
        },
      ),
    );
  }
}
