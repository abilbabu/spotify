import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constant.dart';
import 'package:spotify/view/home/audioScreen/youeplayone.dart';

class yourplaylists extends StatelessWidget {
  final String image;
  final String title;
  const yourplaylists({
    required this.image,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 142,
      child: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: SingleChildScrollView(
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Youeplayone(
                              image:image,
                              title:title,
                            ),
                          ));
                    },
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    title,
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
      ),
    );
  }
}
