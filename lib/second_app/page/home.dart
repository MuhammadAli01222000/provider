import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/config/theme/theme.dart';
import 'package:providers/second_app/core/widget/cards.dart';
import 'package:providers/second_app/page/second_page.dart';
import '../../core/widgets/input_card.dart';
import '../provider/second_app_provider.dart';

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
              AppDimens.h10,
              const Text("Choose any one", style: AppTextStyle.start),
              SizedBox(
                width: AppDimens.d350,
                height: AppDimens.d200,
                child: GridView.builder(
                  itemCount: AppStrings.select.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemBuilder: (BuildContext, index) {
                    return SelectCard(select: AppStrings.select[index]);
                  },
                ),
              ),

              SizedBox(
                width: AppDimens.d350,
                height: AppDimens.d50,
                child: ElevatedButton(
                    onPressed: () {
                      final n1 = int.parse(textController1.text);
                      final n2 = int.parse(textController2.text);
                      final n3 = int.parse(textController3.text);

                      final provider = Provider.of<SecondAppProvider>(context, listen: false);
                      provider.setInputs(
                        add: 1,
                        subtraction: 0,
                        multiplication: 0,
                        division: 0,
                        number1: n1,
                        number2: n2,
                        number3: n3,
                      );
                      provider.listOne(n1: 1, n2: 0, n3: 0, n4: 0);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SecondPage()),
                      );
                    },
                  child: const Text("Next Page"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
