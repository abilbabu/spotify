import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constant.dart';

class Showscreen extends StatelessWidget {
  const Showscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Nothing new in podcasts",
            style: TextStyle(
                color: ColorConstant.Whitecolor,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Follow your favorite podcasts and we'll keep you",
            style: TextStyle(
                color: ColorConstant.Whitecolor,
                fontWeight: FontWeight.normal,
                fontSize: 12),
          ),
          Text(
            "update on them.",
            style: TextStyle(
                color: ColorConstant.Whitecolor,
                fontWeight: FontWeight.normal,
                fontSize: 12),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            width: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: ColorConstant.Grey2),
            child: Center(
              child: Text(
                "Browse podcasts",
                style: TextStyle(
                    color: ColorConstant.Blackcolor,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
