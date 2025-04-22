import 'package:flutter/material.dart';
import 'package:providers/config/theme/dimens.dart';
import 'package:providers/config/theme/theme.dart';
import '../config/theme/strings.dart';
import '../core/widgets/button.dart';
import '../core/widgets/input_card.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = ScrollController();
  final textController1 = TextEditingController();
  final textController2 = TextEditingController();
  final textController3 = TextEditingController();
  @override
  void dispose() {
    super.dispose();

    controller.dispose();
    textController1.dispose();
    textController2.dispose();
    textController3.dispose();
  }

  int countCard = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.backround,
      body: SingleChildScrollView(
        controller: controller,
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: AppDimens.p8,
          child: Column(
            children: [
              AppDimens.h28,
              SizedBox(
                height: 200,
                width: size - 10,
                child: const Card(
                  color: Colors.yellowAccent,
                  child: Center(
                    child: Text(AppStrings.info, style: AppTextStyle.start),
                  ),
                ),
              ),
              InputCard(
                textController: textController1,
                nameWidget: AppStrings.start,
              ),

              AppDimens.h20,
              InputCard(
                textController: textController2,
                nameWidget: AppStrings.end,
              ),

              AppDimens.h20,
              InputCard(
                textController: textController3,
                nameWidget: AppStrings.limit,
              ),
              AppDimens.h350,

              SizedBox(
                width: AppDimens.d350,
                height: AppDimens.d50,
                child: AppButton(textController1: textController1, textController2: textController2, textController3: textController3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
