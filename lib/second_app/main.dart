import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:providers/second_app/app.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const SecondApp());
}