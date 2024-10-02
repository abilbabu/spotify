import 'package:flutter/material.dart';
import 'package:spotify/dummy_db.dart';
import 'package:spotify/view/library_screen/libraryPlaylist/libratyPlaylist.dart';

class Playlistscreen extends StatelessWidget {
  const Playlistscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.grey.shade800,
              Colors.black,
            ],
            stops: [
              0.0,
              0.5,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
        ),
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
            width: 16,
          ),
          itemCount: DummyDb.yourplaylists.length,
        ),
      ),
    );
  }
}
