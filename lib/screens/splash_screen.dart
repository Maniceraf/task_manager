import 'package:flutter/material.dart';
import 'package:task_manager/routes/pages.dart';
import 'package:task_manager/utils/color_palette.dart';
import 'package:task_manager/utils/font_sizes.dart';
import 'package:task_manager/widgets/build_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  startTimer() async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        Pages.home,
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/app_logo.png',
              width: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            buildText('Everything Tasks', kWhiteColor, textBold,
                FontWeight.w600, TextAlign.center, TextOverflow.clip),
            const SizedBox(
              height: 10,
            ),
            buildText('Schedule your week with ease', kWhiteColor, textTiny,
                FontWeight.normal, TextAlign.center, TextOverflow.clip),
          ],
        )));
  }
}
