import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/page/home.dart';
import 'package:providers/providers/app_provider.dart';
class LotoreyaGame  extends StatelessWidget {
  const LotoreyaGame ({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LotoreyaProvider>(
      create: (BuildContext context) {
        return LotoreyaProvider(number1: 1, number2: 1, number3: 1);
      },
      child: const MaterialApp(
        home: Home(),
      ),
    );
  }
}
