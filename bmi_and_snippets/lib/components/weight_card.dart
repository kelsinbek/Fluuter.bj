import 'package:bmi_and_snippets/theme/app_colors.dart';
import 'package:flutter/material.dart';

import 'circular_button.dart';

class WeightCart extends StatelessWidget {
  const WeightCart({super.key, required this.text, required this.weightInt});
  final String text;
  final int weightInt;

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
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Text('$weightInt',
              style:
                  const TextStyle(fontSize: 40, fontWeight: FontWeight.w500)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularButton(
                icon: Icons.remove,
              ),
              Padding(padding: EdgeInsets.all(8)),
              CircularButton(
                icon: Icons.add,
              ),
            ],
          )
        ],
      ),
    ));
  }
}
