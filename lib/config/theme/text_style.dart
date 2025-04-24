import 'package:flutter/material.dart';
import 'package:providers/config/theme/dimens.dart';
import 'colors.dart';
sealed class AppTextStyle{
  static const start=TextStyle(color: AppColors.black,fontSize: AppDimens.d25,fontWeight: FontWeight.w700);
  static const end=TextStyle(color: AppColors.black,fontSize: AppDimens.d25,fontWeight: FontWeight.w700);
  static const limit=TextStyle(color: AppColors.black,fontSize: AppDimens.d25,fontWeight: FontWeight.w700);
  static const generate=TextStyle(color: AppColors.white,fontSize: AppDimens.d20,fontWeight: FontWeight.w700);
static const red=TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: AppDimens.d25);
static const error=TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: AppDimens.d25);
static const math=TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: AppDimens.d50);
static const variant=TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: AppDimens.d25);
static const nextPage=TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: AppDimens.d20);

}