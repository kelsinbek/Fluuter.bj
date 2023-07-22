import 'package:bmi_and_snippets/components/height_card.dart';
import 'package:bmi_and_snippets/components/weight_card.dart';
import 'package:bmi_and_snippets/theme/app_colors.dart';
import 'package:bmi_and_snippets/theme/app_texts.dart';
import 'package:flutter/material.dart';

import 'components/status_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Center(
          child: Text(AppTexts.bmi),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 21,
          top: 32,
          right: 21,
          bottom: 41,
        ),
        child: Column(children: [
          Expanded(
            child: Row(
              children: const [
                StatusCard(icon: Icons.male, text: AppTexts.male),
                SizedBox(
                  width: 39,
                ),
                StatusCard(
                  icon: Icons.female,
                  text: AppTexts.female,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: Row(
              children: const [
                HeightCard(
                  text: AppTexts.height,
                  intHeight: 180,
                  cm: 'cm',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: Row(
              children: const [
                WeightCart(
                  text: AppTexts.weight,
                  weightInt: 60,
                ),
                SizedBox(
                  width: 38,
                ),
                WeightCart(
                  text: AppTexts.age,
                  weightInt: 28,
                ),
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: Container(
        height: 73,
        width: double.infinity,
        color: AppColors.pinkColor,
        child: const Center(
            child: Text(
          AppTexts.calculator,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}
