import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constant.dart';

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
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("asset/image/ep.jpeg"),
            ),
          ),
          title: Text(
            "Your Library",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
          ),
          actions: [
            Icon(
              Icons.search,
              size: 25,
              color: ColorConstant.Whitecolor,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.add,
              size: 25,
              color: ColorConstant.Whitecolor,
            ),
            SizedBox(
              width: 15,
            )
          ],
          bottom: TabBar(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: ColorConstant.Whitecolor,
              unselectedLabelColor: ColorConstant.Whitecolor,
              indicator: BoxDecoration(
                  color: ColorConstant.Greencolor,
                  borderRadius: BorderRadius.circular(25)),
              tabs: [
                Tab(
                  child: Text(
                    "Playlists",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Tab(
                  child: Text(
                    "Artists",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ]),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              Container(
                height: double.maxFinite,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.grey.shade600,
                  Colors.black,
                ], stops: [
                  0.0,
                  0.5
                ], begin: Alignment.topLeft, end: Alignment.bottomLeft)),
                child: TabBarView(
                  children: [
                    Center(child: Text('Content for Tab 1')),
                    Center(child: Text('Content for Tab 2')),
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
