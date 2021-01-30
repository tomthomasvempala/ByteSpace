import 'package:byteSpace/Pages/Home/home.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../../themeData.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var navBarItems = [
      {
        'title': 'Home',
        'icon': Icon(
          _currentIndex == 0 ? Icons.home_filled : Icons.home_outlined,
        )
      },
      {
        'title': 'Explore',
        'icon':
            Icon(_currentIndex == 1 ? Icons.explore : Icons.explore_outlined)
      },
      {
        'title': 'DM',
        'icon':
            Icon(_currentIndex == 2 ? Icons.message : Icons.message_outlined)
      },
      {
        'title': 'Account',
        'icon': Icon(_currentIndex == 3
            ? Icons.emoji_emotions
            : Icons.emoji_emotions_outlined)
      }
    ];
    return Scaffold(
      bottomNavigationBar: SizedBox(
        // height: (80 / 9.48) * SizeConfig.heightMultiplier,
        child: BottomNavigationBar(
          iconSize: 6.5 * SizeConfig.widthMultiplier,
          backgroundColor: Theme.of(context).canvasColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppTheme.darkBlue,
          unselectedItemColor: AppTheme.darkBlue,
          unselectedFontSize: 3.5 * SizeConfig.textMultiplier,
          selectedFontSize: 4 * SizeConfig.textMultiplier,
          currentIndex: _currentIndex,
          items: navBarItems
              .map(
                (e) => BottomNavigationBarItem(
                  icon: e['icon'],
                  label: e['title'],
                ),
              )
              .toList(),
          onTap: onTaped,
        ),
      ),
      body: _currentIndex == 0 ? HomePage() : Container(),
    );
  }

  void onTaped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
