import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/config/theme/dimens.dart';
import 'package:providers/second_app/page/result_page.dart';
import 'package:providers/services/app_controller.dart';
import '../../config/theme/colors.dart';
import '../../config/theme/text_style.dart';
import '../provider/second_app_provider.dart';
import 'home.dart';

var length = 10;
int counter = length;
var correct = 0;
var wrong = 0;

/// qaysi belgini bosganini bilish uchun
String belgi = AppController.math(selectCard);

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SecondAppProvider>(context);
    final SecondAppProvider secondPageProvider = SecondAppProvider();
    final options = provider.variantlar(provider.currentIndex);

    secondPageProvider.list1;
    return Scaffold(
      appBar: _buildAppBar(provider),
      backgroundColor: AppColors.green1,
      body: Padding(
        padding: AppDimens.p8,
        child: Consumer<SecondAppProvider>(
          builder: (context, provider, child) {
            int count = provider.currentIndex;
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          "$belgi"
                          " ${provider.list2[count]} ",
                          style: AppTextStyle.math,
                        ),
                      ),
                    ),
                  ),
                ),
                AppDimens.h20,
                ...options.map((option) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: MaterialButton(
                      onPressed: () {
                        if (option == provider.result[provider.currentIndex]) {
                          correct++;
                        } else {
                          wrong++;
                        }

                        if (provider.currentIndex <
                            provider.result.length - 1) {
                          provider.next();
                        } else {
                          Navigator.pop(context);
                        }
                      },
                      child: SizedBox(
                        width: AppDimens.d350,
                        height: AppDimens.d50,
                        child: Card(
                          color: AppColors.green3,
                          child: Center(
                            child: Text("$option", style: AppTextStyle.variant),
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),

                const Spacer(),

                SizedBox(
                  width: AppDimens.d350,
                  height: AppDimens.d50,
                  child: ElevatedButton(
                    onPressed: () {
                      correct += AppController.correct(
                        provider.number1,
                        provider.number2,
                        provider.number1 + provider.number2,
                        selectCard,
                      );

                      print("Correct $correct");
                      if (provider.currentIndex < provider.result.length - 1) {
                        provider.next();
                      } else {
                        Navigator. push<void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => const ResultPage2(),
                          ),
                        );                      }
                    },
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(AppColors.green4),
                    ),
                    child: const Text(
                      "Next Question",
                      style: AppTextStyle.variant,
                    ),
                  ),
                ),
                AppDimens.h28,
              ],
            );
          },
        ),
      ),
    );
  }

  AppBar _buildAppBar(SecondAppProvider provider) {
    return AppBar(
      title: Consumer<SecondAppProvider>(
        builder: (
          BuildContext context,
          SecondAppProvider value,
          Widget? child,
        ) {
          return Text("$length / $counter", style: AppTextStyle.red);
        },
      ),
      leading: IconButton(
        onPressed: () {
          counter--;
          provider.next();
        },
        icon: const Icon(Icons.home),
      ),
      actions: [
        SizedBox(width: 20),

        Text("$correct Tog'ri"),
        SizedBox(width: 20),
        Text("$wrong Notog'ri"),
        SizedBox(width: 20),

      ],
    );
  }
}
