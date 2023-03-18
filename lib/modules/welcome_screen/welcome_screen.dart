import 'package:finalismail/modules/log_in_page/log_in_page.dart';
import 'package:finalismail/modules/register_screen/register_screen.dart';
import 'package:finalismail/shared/components/components.dart';
import 'package:finalismail/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
                  image: const AssetImage('assets/images/BG.png'),
                  fit: BoxFit.fill,
                ),
              ),

            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/Logo.png'),
                ),
              ),

            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      navigateTo(context,LogInPage());

                    },
                    style: ElevatedButton.styleFrom(
                      primary: orangColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 130, vertical: 22),
                    ),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffffffff)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      navigateTo(context,RegisterScreen());

                    },
                    style: ElevatedButton.styleFrom(
                      primary: mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                         side: BorderSide(
                           color: Colors.white,
                         )

                      ),
                      padding: EdgeInsets.symmetric(horizontal: 128, vertical: 22),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffffffff)),
                    ),
                  ),
                ),
                SizedBox(height: 60,)
              ],
            ),

          ],
        ),
      ),
    );
  }
}
