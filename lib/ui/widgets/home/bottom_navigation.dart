import 'package:flutter/material.dart';
import 'package:food_app_ui/ui/views/login.dart';
import 'package:food_app_ui/utils/theme.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final CustomTheme theme = CustomTheme();

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: theme.background,
      unselectedItemColor: theme.blueGrey,
      selectedItemColor: Colors.deepPurple[400],
      showUnselectedLabels: false,
      showSelectedLabels: false,
      iconSize: theme.getAdaptiveTextSize(context, 26),
      currentIndex: _currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Account',
        ),
      ],
      onTap: (value) {
        _currentIndex = value;
        setState(() {});

        if (_currentIndex == 3) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => LoginScreen()));
        }
      },
    );
  }
}
