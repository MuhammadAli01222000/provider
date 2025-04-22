import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/app_provider.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final numbers = context.watch<LotoreyaProvider>().numbers.toList();

    return Scaffold(
      appBar: AppBar(title: const Text("Natija")),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: numbers.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: Colors.amber,
            child: Center(child: Text('Raqam ${numbers[index]}')),
          );
        },
      ),
    );
  }
}
