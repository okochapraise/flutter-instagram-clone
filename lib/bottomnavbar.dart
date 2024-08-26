

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_project/home.dart';
import 'package:instagram_project/instagramProfile.dart';
import 'package:instagram_project/tools.dart';
import 'package:instagram_project/instagramexplore.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);
 
  @override
  State<Wrapper> createState() => _WrapperState();
}
 
class _WrapperState extends State<Wrapper> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const Home(),
    const SearchScreen(), 
    const Home(), 
    const Home(), 
    const InstagramProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBG,
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.white,
        // elevation: 0,
        // currentIndex: _currentIndex,
        // selectedItemColor: ,
        // unselectedItemColor: Colors.grey,
        // showSelectedLabels: true,
        // showUnselectedLabels: true,
        // type: BottomNavigationBarType.fixed,
        onTap: (int mytappedindex) {
          setState(() {
            
            HapticFeedback.lightImpact();
            _currentIndex = mytappedindex;
          });
        },
         items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: colorBlack),
          label: 'Home', 
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, color: colorBlack),
          label: 'Search', 
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add, color: colorBlack),
          label: 'Add', 
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.queue_play_next, color: colorBlack),
          label: 'Queue', 
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle, color: colorBlack),
          label: 'Profile',
        ),
      ],
      ),
 
      body: _screens.elementAt(_currentIndex),
    );
  }
}