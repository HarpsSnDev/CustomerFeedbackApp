import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  final String pageTitle;
  const AppBarTitle({super.key, required this.pageTitle});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          pageTitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
