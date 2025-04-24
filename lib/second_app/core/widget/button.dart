import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../config/theme/colors.dart';
import '../../../config/theme/text_style.dart';
import '../../../page/second_page.dart';
import '../../page/home.dart';
import '../../provider/second_app_provider.dart';

class FooterButton extends StatelessWidget {
  const FooterButton({
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
    return ElevatedButton(
      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(AppColors.green2)),
      onPressed: () {
        final n1 = int.parse(textController1.text);
        final n2 = int.parse(textController2.text);
        final n3 = int.parse(textController3.text);

        final provider = Provider.of<SecondAppProvider>(context, listen: false);
        provider.setInputs(
          add: selectCard,
          subtraction: selectCard,
          multiplication: selectCard,
          division: selectCard,
          number1: n1,
          number2: n2,
          number3: n3,
        );
        provider.listOne(n1: selectCard, n2: selectCard, n3: selectCard, n4: selectCard);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SecondPage()),
        );
      },
      child:  const Text("Next Page",style: AppTextStyle.nextPage,),
    );
  }
}
