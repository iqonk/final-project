import 'package:final_day/models/meal.dart';
import 'package:final_day/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class InformationPage extends StatelessWidget {
  final Meal character;
  const InformationPage({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            TextWidget(
              name: character.id.toString(),
              num: 0,
            ),
            const SizedBox(height: 12),
            Image.network(character.imageUrl.toString()),
            const SizedBox(height: 12),
            TextWidget(
              name: character.title!,
              isBold: true,
              num: 0,
            )
          ],
        ),
      ),
    );
  }
}
