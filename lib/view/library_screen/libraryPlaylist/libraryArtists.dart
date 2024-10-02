import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constant.dart';
import 'package:spotify/view/home/audioScreen/categoryfour.dart';

class Libraryartists extends StatelessWidget {
  final String imageart;
  final String name;
  const Libraryartists({
    required this.imageart,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 12, left: 13),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Categoryfour(
                        image: imageart,
                        title: name,
                      ),
                    ));
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(imageart),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                        height: 50,
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
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
