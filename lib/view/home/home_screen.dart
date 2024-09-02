import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.Blackcolor,
      appBar: AppBar(
        title: Text("data"),
      ),
    );
  }
}
