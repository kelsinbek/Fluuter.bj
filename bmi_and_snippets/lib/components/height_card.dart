import 'package:bmi_and_snippets/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeightCard extends StatelessWidget {
  const HeightCard(
      {super.key,
      required this.text,
      required this.intHeight,
      required this.cm});
  final String text;
  final int intHeight;
  final String cm;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: AppColors.cartColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '$intHeight',
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
              ),
              Text(cm,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w800)),
            ],
          ),
          SizedBox(
            width: 300,
            child: CupertinoSlider(
              activeColor: AppColors.whiteColor,
              thumbColor: AppColors.pinkColor,
              value: 180,
              min: 0,
              max: 300,
              onChanged: (value) {},
            ),
          )
        ],
      ),
    ));
  }
}
