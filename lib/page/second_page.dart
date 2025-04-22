import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/config/theme/colors.dart';
import 'package:providers/config/theme/dimens.dart';
import 'package:providers/config/theme/text_style.dart';
import 'package:providers/page/result_page.dart';
import 'package:providers/providers/app_provider.dart';

class SecondPage extends StatelessWidget {
  SecondPage({super.key});
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final numbers = context.watch<LotoreyaProvider>().numbers.toList();
    final count = numbers.length;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.green2,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const  ResultPage()));
        },
        child: const Center(child: Text(" Next    Page",style: TextStyle(color: AppColors.white),)),
      ),
      appBar: AppBar(),
      body: SingleChildScrollView(
        controller: controller,
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: AppDimens.p8,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 800,

                /// todo consumer
                child: Consumer<LotoreyaProvider>(
                  builder: (context, lotoreyaProvider, _) {
                    return GridView.builder(
                      controller: controller,
                      scrollDirection: Axis.vertical,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                      itemCount: numbers.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Center(
                            child: Text(
                              'Item ${numbers[index]}',
                              style: AppTextStyle.red,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
