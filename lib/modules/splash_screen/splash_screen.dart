import 'package:finalismail/modules/log_in_page/log_in_page.dart';
import 'package:finalismail/modules/welcome_screen/welcome_screen.dart';
import 'package:finalismail/shared/components/components.dart';
import 'package:finalismail/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_count_down.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: mainColor,
      body:SafeArea(
        top: false,
        bottom: false,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/Logo.png'),
                ),
              ),

            ),
            Countdown(
              seconds: 4,
              build: (BuildContext context, double time) => Text(time.toString()),
              interval: Duration(milliseconds: 100),
              onFinished: () {
                setState(() {
                  navigateAndFinish(context,WelcomeScreen());

                });

              },
            ),
          ],
        ),
      ),
    );
  }
}
