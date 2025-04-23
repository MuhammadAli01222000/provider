import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/config/theme/dimens.dart';
import '../../config/theme/colors.dart';
import '../../config/theme/text_style.dart';
import '../provider/second_app_provider.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  @override
  Widget build(BuildContext context) {
    int count=0;
    int length=0;
    final provider = Provider.of<SecondAppProvider>(context);
    length=provider.result.length;
    final SecondAppProvider secondPageProvider = SecondAppProvider();
    secondPageProvider.list1;
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: AppColors.green1,
      body: Padding(
        padding: AppDimens.p8,
        child: Consumer<SecondAppProvider>(
    builder: (context, provider, child) {
      int count = provider.currentIndex;
      return Column(
        children: [
          Center(
            child: SizedBox(
              width: AppDimens.d350,
              height: AppDimens.d200,
              child: Card(
                color: Colors.greenAccent,
                child: Center(
                  child: Text(
                    '${provider.list1[count]} '
                        "+"
                        " ${provider.list2[count]} ",
                    style: AppTextStyle.math,
                  ),
                ),
              ),
            ),
          ),
          AppDimens.h20,
          SizedBox(
            width: AppDimens.d350,
            height: AppDimens.d50,
            child: Card(
              color: AppColors.green3,
              child: Center(
                child: Text(
                  "${provider.result[count]}",
                  style: AppTextStyle.variant,
                ),
              ),
            ),
          ),
          AppDimens.h20,
          SizedBox(
            width: AppDimens.d350,
            height: AppDimens.d50,
            child: Card(
              color: AppColors.green3,
              child: Center(
                child: Text(
                  "${provider.result[1]}",
                  style: AppTextStyle.variant,
                ),
              ),
            ),
          ),
          AppDimens.h20,
          SizedBox(
            width: AppDimens.d350,
            height: AppDimens.d50,
            child: Card(
              color: AppColors.green3,
              child: Center(
                child: Text(
                  "${provider.result[2]}",
                  style: AppTextStyle.variant,
                ),
              ),
            ),
          ),
          AppDimens.h20,
          SizedBox(
            width: AppDimens.d350,
            height: AppDimens.d50,
            child: Card(
              color: AppColors.green3,
              child: Center(
                child: Text(
                  "${provider.result[3]}",
                  style: AppTextStyle.variant,
                ),
              ),
            ),
          ),
          AppDimens.h20,

          const Spacer(),

          SizedBox(
            width: AppDimens.d350,
            height: AppDimens.d50,
            child: ElevatedButton(
              onPressed: () {
                if (provider.currentIndex < provider.result.length - 1) {
                  provider.next();
                } else {
                  Navigator.pop(context);
                }
              },
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(AppColors.green4),
              ),
              child: const Text("Next Question", style: AppTextStyle.variant,),
            ),
          ),
          AppDimens.h28,
        ],
      );
    }),
      ),
    );
  }
}
