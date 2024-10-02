import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constant.dart';
import 'package:spotify/view/home/audioScreen/categorytwo.dart';

class jump_back extends StatelessWidget {
  final String imageurl;
  final String titlename;
  const jump_back({
    required this.imageurl,
    required this.titlename,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
     
      child: Padding(
        padding: const EdgeInsets.only(left: 13, top: 8),
        child: SingleChildScrollView(
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Categorytwo(
                          image: imageurl,
                          title: titlename,
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
                          image: DecorationImage(
                              image: AssetImage(imageurl), fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      titlename,
                      style: TextStyle(
                          fontSize: 14,
                          color: ColorConstant.Whitecolor,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
