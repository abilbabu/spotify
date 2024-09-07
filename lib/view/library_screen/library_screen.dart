import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constant.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.grey.shade600,
          Colors.black,
        ], stops: [
          0.0,
          0.5
        ], begin: Alignment.topLeft, end: Alignment.bottomLeft)),
        child: Column(
          children: [_titleSection()],
        ),
      ),
    );
  }

  Widget _titleSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 37),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage("asset/image/ep.jpeg"),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "Your Library",
            style: TextStyle(
                color: ColorConstant.Whitecolor,
                fontSize: 23,
                fontWeight: FontWeight.w700),
          ),
          Spacer(),
          Icon(
            Icons.add,
            size: 28,
            color: ColorConstant.Whitecolor,
          )
        ],
      ),
    );
  }
}
