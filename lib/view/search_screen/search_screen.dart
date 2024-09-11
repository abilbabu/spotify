import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constant.dart';
import 'package:spotify/view/search_screen/searchpage.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey.shade600, Colors.black],
            stops: [0.0, 0.5],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _titleSection(context),
              _searchItemsSections(),
            ],
          ),
        ),
      ),
    );
  }

  Padding _searchItemsSections() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 850,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 10),
              child: Text(
                "Browse all",
                style: TextStyle(
                  color: ColorConstant.Whitecolor,
                  fontSize: 15,
                ),
              ),
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Positioned(
                      top: 13,
                      left: 10,
                      child: Text(
                        "Pop",
                        style: TextStyle(
                            color: ColorConstant.Whitecolor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Positioned(
                      right: -3,
                      bottom: -3,
                      child: Transform.rotate(
                        angle: 0.25,
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage("asset/image/giving.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    )
                  ],
                ),
                Spacer(),
                Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Positioned(
                      top: 13,
                      left: 10,
                      child: Text(
                        "Love",
                        style: TextStyle(
                            color: ColorConstant.Whitecolor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Positioned(
                      right: -3,
                      bottom: -3,
                      child: Transform.rotate(
                        angle: 0.25,
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage("asset/image/love.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Positioned(
                      top: 13,
                      left: 10,
                      child: Text(
                        "Music",
                        style: TextStyle(
                            color: ColorConstant.Whitecolor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Positioned(
                      right: -3,
                      bottom: -3,
                      child: Transform.rotate(
                        angle: 0.25,
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage("asset/image/prone.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    )
                  ],
                ),
                Spacer(),
                Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Positioned(
                      top: 13,
                      left: 10,
                      child: Text(
                        "Podcasts",
                        style: TextStyle(
                            color: ColorConstant.Whitecolor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Positioned(
                      right: -3,
                      bottom: -3,
                      child: Transform.rotate(
                        angle: 0.25,
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage("asset/image/night.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.yellowAccent,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Positioned(
                      top: 13,
                      left: 10,
                      child: Text(
                        "Live Events",
                        style: TextStyle(
                            color: ColorConstant.Whitecolor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Positioned(
                      right: -3,
                      bottom: -3,
                      child: Transform.rotate(
                        angle: 0.25,
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage("asset/image/maahaa.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    )
                  ],
                ),
                Spacer(),
                Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Positioned(
                      top: 13,
                      left: 10,
                      child: Text(
                        "Made For You",
                        style: TextStyle(
                            color: ColorConstant.Whitecolor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Positioned(
                      right: -3,
                      bottom: -3,
                      child: Transform.rotate(
                        angle: 0.25,
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage("asset/image/Slow.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Positioned(
                      top: 13,
                      left: 10,
                      child: Text(
                        "Malayalam",
                        style: TextStyle(
                            color: ColorConstant.Whitecolor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Positioned(
                      right: -3,
                      bottom: -3,
                      child: Transform.rotate(
                        angle: 0.25,
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image:
                                      AssetImage("asset/image/trending.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    )
                  ],
                ),
                Spacer(),
                Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.lightGreenAccent,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Positioned(
                      top: 13,
                      left: 10,
                      child: Text(
                        "Hindi",
                        style: TextStyle(
                            color: ColorConstant.Whitecolor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Positioned(
                      right: -3,
                      bottom: -3,
                      child: Transform.rotate(
                        angle: 0.25,
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage("asset/image/hindi.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Positioned(
                      top: 13,
                      left: 10,
                      child: Text(
                        "Lofi Malayalam",
                        style: TextStyle(
                            color: ColorConstant.Whitecolor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Positioned(
                      right: -3,
                      bottom: -3,
                      child: Transform.rotate(
                        angle: 0.25,
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage("asset/image/lofi.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    )
                  ],
                ),
                Spacer(),
                Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Positioned(
                      top: 13,
                      left: 10,
                      child: Text(
                        "Feel",
                        style: TextStyle(
                            color: ColorConstant.Whitecolor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Positioned(
                      right: -3,
                      bottom: -3,
                      child: Transform.rotate(
                        angle: 0.25,
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage("asset/image/feeling.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Positioned(
                      top: 13,
                      left: 10,
                      child: Text(
                        "Chill",
                        style: TextStyle(
                            color: ColorConstant.Whitecolor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Positioned(
                      right: -3,
                      bottom: -3,
                      child: Transform.rotate(
                        angle: 0.25,
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage("asset/image/chill.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    )
                  ],
                ),
                Spacer(),
                Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Positioned(
                      top: 13,
                      left: 10,
                      child: Text(
                        "Anton",
                        style: TextStyle(
                            color: ColorConstant.Whitecolor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Positioned(
                      right: -3,
                      bottom: -3,
                      child: Transform.rotate(
                        angle: 0.25,
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage("asset/image/toptwo.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _titleSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 45, right: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "Search",
                style: TextStyle(
                  color: ColorConstant.Whitecolor,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.camera_alt_outlined,
                size: 25,
                color: ColorConstant.Whitecolor,
              ),
            ],
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchPage(),
                ),
              );
            },
            child: Container(
              width: double.infinity,
              height: 46,
              decoration: BoxDecoration(
                color: ColorConstant.Greycolor,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.search,
                    size: 25,
                    color: ColorConstant.Blackcolor,
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      'Artists, songs, or podcasts',
                      style: TextStyle(
                        color: ColorConstant.Blackcolor,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.mic_none,
                    size: 25,
                    color: ColorConstant.Blackcolor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
