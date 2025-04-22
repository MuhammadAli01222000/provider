import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/second_app/page/home.dart';
import 'package:providers/second_app/provider/second_app_provider.dart';
class SecondApp extends StatelessWidget {
  const SecondApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider<SecondAppProvider>(
      create: (BuildContext context) =>SecondAppProvider(),
      child: const MaterialApp(
        home: Home(),
      ),
    );
  }
}
