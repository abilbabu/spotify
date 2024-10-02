import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constant.dart';

class custommusiclist extends StatelessWidget {
  const custommusiclist({
    super.key,
    required this.name,
    required this.artist, 
    required this.image, 
  });
  final String name;
  final String artist;
  final String image;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: ColorConstant.Whitecolor,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  artist,
                  style: TextStyle(
                    color: ColorConstant.lightGrey,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Spacer(),
            Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Icon(
                  Icons.more_horiz,
                  size: 28,
                  color: ColorConstant.Whitecolor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
