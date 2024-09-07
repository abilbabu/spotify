import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constant.dart';

class fav_artists extends StatelessWidget {
 final String imageart;
 final String name;
  const fav_artists({
    required this.imageart,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Padding(
        padding: const EdgeInsets.only(top: 12, left: 13),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 65,
                  backgroundImage:
                      AssetImage(imageart),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: ColorConstant.Whitecolor),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
