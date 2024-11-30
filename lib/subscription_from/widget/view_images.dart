import 'package:flutter/material.dart';

class BackgroundImages extends StatelessWidget {
  const BackgroundImages({super.key, this.body, this.appBar});
  final Widget? body;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/home.png'), fit: BoxFit.cover),
        ),
        child: SafeArea(child: body!),
      ),
    );
  }
}
