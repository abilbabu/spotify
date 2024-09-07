import 'package:flutter/material.dart';
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
  int selectedTab = 0;
  List screen = [HomeScreen(), SearchScreen(), LibraryScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedTab],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: ColorConstant.Blackcolor,
          currentIndex: selectedTab,
          onTap: (value) {
            selectedTab = value;
            setState(() {});
          },
          selectedItemColor: ColorConstant.Whitecolor,
          unselectedItemColor: ColorConstant.Greycolor,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "hOME"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_add_outlined), label: "Library"),
          ]),
    );
  }
}
