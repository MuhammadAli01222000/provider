import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../config/theme/colors.dart';
import '../../config/theme/dimens.dart';
import '../../config/theme/strings.dart';
import '../../config/theme/text_style.dart';
import '../../page/second_page.dart';
import '../../providers/app_provider.dart';
import '../../services/app_controller.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.textController1,
    required this.textController2,
    required this.textController3,
  });

  final TextEditingController textController1;
  final TextEditingController textController2;
  final TextEditingController textController3;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        final number1 = int.tryParse(textController1.text);
        final number2 = int.tryParse(textController2.text);
        final number3 = int.tryParse(textController3.text);

        if (number1 != null && number2 != null && number3 != null) {
          final check = AppController.check(number1, number2, number3);

          if (check == null) {
            showDialog(
              context: context,
              builder: (_) => const AlertDialog(
                content: Text("Ukam hato kiritding. Limit katta bo'lishi mumkin emas."),
              ),
            );
            return;
          }
///  TODO >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          context.read<LotoreyaProvider>().generateNumbers(
            number1: number1,
            number2: number2,
            number3: number3,
          );
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context )=>SecondPage()));
        }
      },

      style: const ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: AppDimens.r15),
        ),
        side: WidgetStatePropertyAll(
          BorderSide(color: Colors.green),
        ),
        backgroundColor: WidgetStatePropertyAll(AppColors.green1),
      ),
      child: const Center(
        child: Text(
          AppStrings.generate,
          style: AppTextStyle.generate,
        ),
      ),
    );
  }
}
