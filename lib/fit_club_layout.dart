
import 'package:finalismail/modules/home_screen/home_screen.dart';
import 'package:finalismail/modules/messages_screen/messages.dart';
import 'package:finalismail/modules/settings_screen/settings_screen.dart';
import 'package:finalismail/shared/styles/colors.dart';
import 'package:flutter/material.dart';


class FitClublayout extends StatefulWidget
{
  @override
  State<FitClublayout> createState() => _FitClublayoutState();
}

class _FitClublayoutState extends State<FitClublayout> {
  int currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    MessagesScreen(),
    SettingsScreen(),

  ];

  List<String> titles = [
    'Home',
    'Messages',
    'Settings',
  ];

  void changeIndex(int index) {
    currentIndex = index;
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
          backgroundColor:mainColor,

          body:SafeArea(
              top: false,
              bottom: false,
              child: screens[currentIndex]),//كل سكرن هتوخد من ليستا برضو
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(4, 6),
                    blurRadius: 12,
                  ),
                ],
              ),
              child: BottomNavigationBar(// تنساش انو في ستايل احنا حطينو ب التيم
                currentIndex:currentIndex,
                onTap: (index)
                {
                  setState(() {
                    changeIndex(index);

                  });
                },
                items:  const [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.message,
                    ),
                    label: 'Messages',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.settings,
                    ),
                    label: 'Settings',
                  ),
                ],
              ),
            ),
          ),
        );

  }
}