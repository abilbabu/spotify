import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:spotify/utils/constants/color_constant.dart';
import 'package:spotify/view/home/SettingScreen/settingscreen.dart';
import 'package:spotify/view/library_screen/widget/meartists.dart';
import 'package:spotify/view/library_screen/widget/playlistscreen.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade600,
          leading: Padding(
            padding: const EdgeInsets.only(left: 13, top: 5),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Settingscreen(),
                    ));
              },
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("asset/image/ep.jpeg"),
              ),
            ),
          ),
          title: Text(
            "Your Library",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          actions: [
            Icon(
              Icons.search,
              size: 25,
              color: ColorConstant.Whitecolor,
            ),
            SizedBox(width: 10),
            Icon(
              Icons.add,
              size: 25,
              color: ColorConstant.Whitecolor,
            ),
            SizedBox(width: 15),
          ],
        ),
        body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.grey.shade600, Colors.black],
              stops: [0.0, 0.5],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 200,
                child: TabBar(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: ColorConstant.Whitecolor,
                  unselectedLabelColor: ColorConstant.Whitecolor,
                  indicatorColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(45),
                    border: Border.all(
                      color: ColorConstant.Whitecolor,
                      width: 2,
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "Playlists",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Artists",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: ColorConstant.Blackcolor),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    HugeIcon(
                      icon: HugeIcons.strokeRoundedArrowUpDown,
                      color: ColorConstant.Whitecolor,
                      size: 20,
                    ),
                    Text(
                      'Recently played',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    HugeIcon(
                      icon: HugeIcons.strokeRoundedMenuSquare,
                      color: ColorConstant.Whitecolor,
                      size: 20,
                    )
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Playlistscreen(),
                    Meartists(),
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
