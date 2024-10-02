import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:spotify/utils/constants/color_constant.dart';
import 'package:spotify/view/home/home_screen.dart';
import 'package:spotify/view/library_screen/library_screen.dart';
import 'package:spotify/view/search_screen/search_screen.dart';

class BottomnavbarScreen extends StatefulWidget {
  const BottomnavbarScreen({super.key});

  @override
  State<BottomnavbarScreen> createState() => _BottomnavbarScreenState();
}

class _BottomnavbarScreenState extends State<BottomnavbarScreen> {
  int _selectedTab = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedTab,
        children: <Widget>[
          HomeScreen(),
          SearchScreen(),
          LibraryScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorConstant.Blackcolor,
        currentIndex: _selectedTab,
        onTap: _onItemTapped,
        selectedItemColor: ColorConstant.Whitecolor,
        unselectedItemColor: ColorConstant.Greycolor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            // icon: Icon(Icons.library_add_outlined),
            icon: HugeIcon(
                icon: HugeIcons.strokeRoundedLibraries,
                color: ColorConstant.Greycolor),
            label: "Library",
          ),
        ],
      ),
    );
  }
}
