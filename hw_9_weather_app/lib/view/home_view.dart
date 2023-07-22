import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hw_9_weather_app/constants/app_colors.dart';
import 'package:hw_9_weather_app/constants/app_text_style.dart';

class MyHomeView extends StatefulWidget {
  const MyHomeView({super.key});

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBgc,
        title: const Center(
          child: Text(
            'HomeWork 09',
            style: AppTextStyles.titleStyle,
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image/bg_image.jpg'),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.near_me,
                    color: AppColors.iconColor,
                  ),
                  Icon(
                    Icons.location_city,
                    color: AppColors.iconColor,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                const Text(
                  '8',
                  style: AppTextStyles.sanTextStyle,
                ),
                Image.asset(
                  'assets/image/cloud.png',
                  height: 120,
                  width: 150,
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            const Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "You'll\n need\n and ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 70,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Bishkek",
                style: TextStyle(color: Colors.white, fontSize: 70),
              ),
            )
          ],
        ),
      ),
    );
  }
}
