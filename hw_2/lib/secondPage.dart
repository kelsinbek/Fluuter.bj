import 'package:flutter/material.dart';

class secondPage extends StatelessWidget {
  const secondPage({super.key, required this.count});
  final int count;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var count2 = count;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
            child: Text(
          "Тапшырма 2",
          style: TextStyle(color: Colors.black),
        )),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Colors.grey,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Theme.of(context).colorScheme.outline,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                width: 400,
                height: 50,
                child: Center(
                    child: Text(
                  "Сан: $count",
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w600),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
