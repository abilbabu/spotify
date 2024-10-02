import 'package:flutter/material.dart';
import 'package:spotify/dummy_db.dart';
import 'package:spotify/view/library_screen/libraryPlaylist/libraryArtists.dart';

class Meartists extends StatelessWidget {
  const Meartists({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.grey.shade800,
          Colors.black,
        ], stops: [
          0.0,
          0.5,
        ], begin: Alignment.topLeft, end: Alignment.bottomLeft)),
        child:  ListView.separated(
          padding: EdgeInsets.symmetric(
            horizontal: 13,
          ),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => Libraryartists(
            imageart: DummyDb.fav_artists[index]['imageart'],
            name: DummyDb.fav_artists[index]['name'],
          ),
          separatorBuilder: (context, index) => SizedBox(
            width: 16,
          ),
          itemCount: DummyDb.fav_artists.length,
        ),
      ),
    );
  }
}
