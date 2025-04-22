import 'package:flutter/material.dart';
import 'package:providers/config/theme/theme.dart';

class SelectCard extends StatelessWidget {
  final String select;
  const SelectCard({super.key, required this.select});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: AppDimens.d50,
      height: AppDimens.d50,
      child: Card(
        color: Colors.red,
        child: Center(
          child: Text(
            select,
            style: const TextStyle(
              fontSize: AppDimens.d25,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
