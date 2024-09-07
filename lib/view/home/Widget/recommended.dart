import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constant.dart';

class recommended extends StatelessWidget {
  final String namerec;
  final imagerec;
  const recommended({
    required this.imagerec,
    required this.namerec,
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
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(8),
                      image: DecorationImage(
                          image: AssetImage(imagerec), fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  namerec,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: ColorConstant.Whitecolor),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
