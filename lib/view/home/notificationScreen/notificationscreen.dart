import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constant.dart';
import 'package:spotify/view/home/notificationScreen/notification_listviewer/newsongscreen.dart';
import 'package:spotify/view/home/notificationScreen/notification_listviewer/showScreen.dart';

class notificationScreen extends StatelessWidget {
  const notificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade600,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: ColorConstant.Whitecolor,
            ),
          ),
        ),
        body: Container(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "What's New",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                width: 300,
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
                        "Music",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Podcasts & Shows",
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
                child: Text(
                  'New',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [Newsongscreen(), Showscreen()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
