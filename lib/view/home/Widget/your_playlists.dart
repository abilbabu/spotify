import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constant.dart';
import 'package:spotify/view/home/audioScreen/categoryone.dart';

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
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: SingleChildScrollView(
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Categoryone(
                          image: image,
                          title: title,
                        ),
                      ));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: ColorConstant.Whitecolor),
                        ),
                        Text(
                          "Playlist.Spotify ",
                          style: TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.w400,
                              color: ColorConstant.Whitecolor),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
