import 'package:flutter/material.dart';
import 'package:spotify/dummy_db.dart';
import 'package:spotify/utils/constants/color_constant.dart';
import 'package:spotify/view/library_screen/libraryPlaylist/libratyPlaylist.dart';


class Recentedscreen extends StatelessWidget {
  const Recentedscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Center(
          child: Text(
            "Recently played",
            style: TextStyle(
              color: ColorConstant.Whitecolor,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        actions: [
          Icon(
            Icons.more_horiz,
            color: ColorConstant.Whitecolor,
          ),
          SizedBox(
            width: 10,
          )
        ],
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today",
                style: TextStyle(
                    color: ColorConstant.Whitecolor,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(
                    horizontal: 13,
                  ),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => Libratyplaylist(
                    image: DummyDb.yourplaylists[index]['image'],
                    title: DummyDb.yourplaylists[index]['title'],
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
                  itemCount: DummyDb.yourplaylists.length,
                ),
              ),
              Text(
                "see all 7 played",
                style: TextStyle(
                    color: ColorConstant.lightGrey,
                    fontWeight: FontWeight.w700,
                    fontSize: 15),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
