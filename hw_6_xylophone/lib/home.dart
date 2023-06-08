import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget notas(String a, Color b) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          AudioPlayer().play(
            AssetSource(a),
          );
        },
        child: Container(
          color: b,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter hylophone'),
      ),
      body: Column(
        children: [
          notas('assets_note1.wav', Colors.red),
          notas('assets_note2.wav', Colors.orange),
          notas('assets_note3.wav', Colors.yellow),
          notas('assets_note4.wav', Colors.green),
          notas('assets_note5.wav', Colors.blue),
          notas('assets_note6.wav', Colors.lightBlue),
          notas('assets_note7.wav', Colors.pink),
          notas('assets_note1.wav', Colors.greenAccent),
        ],
      ),
    );
  }
}
