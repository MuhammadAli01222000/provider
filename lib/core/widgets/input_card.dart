import 'package:flutter/material.dart';
import 'package:providers/core/widgets/text_field.dart';

import '../../config/theme/colors.dart';
import '../../config/theme/strings.dart';
import '../../config/theme/text_style.dart';
class InputCard extends StatelessWidget {
  final String nameWidget;
  const InputCard({
    super.key,
    required this.textController,
    required this.nameWidget,
  });

  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.green2,
      child: ListTile(
        leading: Text(nameWidget, style: AppTextStyle.start),
        title: Card(
          color: AppColors.green1,
          child: Input(controller: textController, hintText: AppStrings.number),
        ),
      ),
    );
  }
}
