import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constant.dart';

class Settinglist extends StatelessWidget {
  const Settinglist({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            name,
            style: TextStyle(
              color: ColorConstant.Whitecolor,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            color: ColorConstant.lightGrey,
            size: 20,
          )
        ],
      ),
    );
  }
}
