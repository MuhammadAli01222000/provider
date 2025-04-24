import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/config/theme/dimens.dart';
import 'package:providers/config/theme/text_style.dart';
import 'package:providers/second_app/page/home.dart';
import 'package:providers/second_app/page/second_page.dart';
import 'package:providers/second_app/provider/second_app_provider.dart';

import '../../config/theme/colors.dart';

class ResultPage2 extends StatelessWidget {
  const ResultPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (BuildContext context) => const Home()),
          );
        },
        child: const Icon(
          Icons.home,
          size: AppDimens.d25,
          color: AppColors.white,
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(AppDimens.d200),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(AppDimens.d25),
              bottomRight: Radius.circular(AppDimens.d25),
            ),
          ),child: const Center(child: Text("You Result ",style: AppTextStyle.variant,),),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        child: Center(
          child: Column(
            children: [
              AppDimens.h28,
              SizedBox(
                width: AppDimens.d350,
                height: AppDimens.d250,
                child: Card(
                  color: AppColors.green3,
                  child: Center(
                    child: ListTile(
                      leading: Text(
                        "Correct $correct",
                        style: AppTextStyle.variant,
                      ),
                      title: Text("Wrong  $wrong", style: AppTextStyle.variant),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
