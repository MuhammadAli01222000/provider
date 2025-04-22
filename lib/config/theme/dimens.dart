import 'package:flutter/material.dart';
sealed class AppDimens{
  static const d8=8.0;
  static const d15=15.0;
  static const d20=18.0;
  static const d25=25.0;
  static const d50=50.0;
  static const d250=250.0;
  static const d350=350.0;

  /// height
  static const h20= SizedBox(height: 20,);
  static const h28= SizedBox(height: 28,);
  static const h100= SizedBox(height: 100,);
  static const h350= SizedBox(height:d250,);
  ////
  static const p8=EdgeInsets.all(AppDimens.d8);
  //radius
static const r15=BorderRadius.all(Radius.circular(AppDimens.d15));
}