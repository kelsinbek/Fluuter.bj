import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_style.dart';
import '../use_file.dart';
import '../constants/texts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int a = 0;
  int b = 0;
  bool ishtoo = true;
  UseQiuze useQiuze = UseQiuze();
  List<Icon> iconAluus = [];

  void teksheruu(bool koldonuu) {
    late bool correctAnswer = useQiuze.joopAluu();
    setState(() {
      if (useQiuze.isFinished() != true) {
        if (correctAnswer == koldonuu) {
          iconAluus.add(const Icon(
            Icons.check_outlined,
            color: Colors.green,
          ));
          a++;
        } else {
          iconAluus.add(const Icon(
            Icons.close_outlined,
            color: Colors.red,
          ));
          b++;
        }
        useQiuze.nextQuestion();
      } else {
        if (correctAnswer == koldonuu) {
          iconAluus.add(const Icon(
            Icons.check_outlined,
            color: Colors.green,
          ));
          a++;
        } else {
          iconAluus.add(const Icon(
            Icons.close_outlined,
            color: Colors.red,
          ));
          b++;
        }

        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return Center(
              child: AlertDialog(
                title: const Center(
                    child: Text(
                  'Test',
                  style: TextStyle(color: Colors.yellow),
                )),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: [
                      const Text("The test is over"),
                      Text(
                        "True answers: $a ",
                        style: const TextStyle(color: Colors.green),
                      ),
                      Text(
                        "Fals answers: $b",
                        style: const TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
                actions: [
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            a = 0;
                            b = 0;
                            ishtoo = true;
                            iconAluus.clear();
                            Ggg();
                            Navigator.of(context).pop();
                          });
                        },
                        child: const Text(
                          "Again",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Ok()));
                        },
                        child: const Text('Exit'),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
        ishtoo = false;
        useQiuze.indexZero();
      }
    });
  }

  Widget Ok() {
    return AlertDialog(
      title: const Center(
        child: Text(
          'Good bye sir',
          style: TextStyle(color: Colors.yellow),
        ),
      ),
      actions: [
        TextButton(
            onPressed: () {
              setState(() {
                a = 0;
                b = 0;
                ishtoo = true;
                iconAluus.clear();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              });
            },
            child: Text("ok"))
      ],
    );
  }

  Widget Ggg() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        Text(
          useQiuze.surooAluu(),
          style: AppTextStyles.appTextStyle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 100,
        ),
        SizedBox(
          height: 70,
          width: 335,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.trueBgrColor),
            onPressed: ishtoo
                ? () {
                    setState(() {
                      teksheruu(true);
                    });
                  }
                : null,
            child: const Text(
              AppTexts.trueButtonText,
              style: AppTextStyles.trueTextStyle,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 70,
          width: 335,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.falseBgrColor),
            onPressed: ishtoo
                ? () {
                    setState(() {
                      teksheruu(false);
                    });
                  }
                : null,
            child: const Text(
              AppTexts.falseButtonText,
              style: AppTextStyles.trueTextStyle,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: iconAluus.length,
            itemBuilder: (BuildContext context, int i) {
              return iconAluus[i];
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'HomeWork-7',
            style: AppTextStyles.appBarTextStyle,
          ),
        ),
        elevation: 0,
        backgroundColor: AppColors.appBarColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Ggg(),
        ),
      ),
    );
  }
}
