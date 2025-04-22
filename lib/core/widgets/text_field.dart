import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:providers/config/theme/dimens.dart';
import 'package:providers/config/theme/icons.dart';

class Input extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  Input({super.key, required this.controller, required this.hintText}) {
    if (controller.text.isEmpty) {
      controller.text = '1';
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      controller: controller,
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
      ],
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon:AppIcons.number,
      ),
    );
  }
}
