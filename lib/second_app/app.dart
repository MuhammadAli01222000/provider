import 'package:flutter/material.dart';
import 'package:providers/second_app/page/home.dart';
class SecondApp extends StatelessWidget {
  const SecondApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
