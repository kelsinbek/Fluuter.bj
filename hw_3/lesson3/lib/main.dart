import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IamRich(),
    );
  }
}

class IamRich extends StatefulWidget {
  const IamRich({super.key});

  @override
  State<IamRich> createState() => _IamRichState();
}

class _IamRichState extends State<IamRich> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 213, 161, 17),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 212, 161, 22),
        title: const Center(
          child: Text(
            "Тапшырма 3",
            style: TextStyle(color: Colors.black),
          ),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "I'm Rich",
              style: TextStyle(fontSize: 48, fontFamily: "Sofia-Regular"),
            ),
            SizedBox(
                width: 200,
                height: 200,
                child: Image.asset("assets/images/ruby.png"))
          ],
        ),
      ),
    );
  }
}
