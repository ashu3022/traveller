import 'package:flutter/material.dart';

import '../screens/bookmark_screen.dart';
import '../screens/homescreen.dart';
import '../screens/profile_screen.dart';
import '../screens/loading_screen.dart';
import '../screens/constraints.dart';

class TabsScreen extends StatefulWidget {
  static const String routeName = '/tabscreen';
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Widget> _pages = [
    Homescreen(),
    LoadingScreen(),
    BookmarkScreen(),
    ProfileScreen(),
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: _selectedPageIndex == 0,
      appBar: AppBar(
        backgroundColor:
            _selectedPageIndex == 0 ? Colors.transparent : Colors.white,
        title: _selectedPageIndex == 1
            ? Text(
                'Weather',
                style: TextStyle(color: Colors.black, fontSize: 25),
              )
            : _selectedPageIndex == 2
                ? Text(
                    'Bookmarks',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  )
                : _selectedPageIndex == 3
                    ? Text(
                        'Account',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      )
                    : Text(''),
        elevation: _selectedPageIndex == 0 ? 0 : 1,
      ),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: _selectPage,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud),
            label: 'Weather',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmarks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
