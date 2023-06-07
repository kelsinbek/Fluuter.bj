import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int firstDice = 1;
  int secondDice = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE93B),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text('Тапшырма 5'),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        if (firstDice == 4)
          Container(
            color: Colors.red,
            child: Text("Ураа туура болду"),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              Expanded(
                  child: InkWell(
                      onTap: () {
                        setState(() {
                          firstDice = Random().nextInt(6) + 1;
                          secondDice = Random().nextInt(6) + 1;
                        });
                      },
                      child: Image.asset('images/dice$firstDice.png'))),
              const SizedBox(
                width: 25,
              ),
              Expanded(
                  child: InkWell(
                      onTap: () {
                        setState(() {
                          secondDice = Random().nextInt(6) + 1;
                          firstDice = Random().nextInt(6) + 1;
                        });
                      },
                      child: Image.asset('images/dice$secondDice.png'))),
            ],
          ),
        )
      ]),
    );
  }
}
