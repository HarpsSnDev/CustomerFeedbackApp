import 'package:flutter/material.dart';

import 'src/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xffd10a2a),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffd10a2a)),
        useMaterial3: true,
      ),
      home:  const MainPage(),
    );
  }
}
