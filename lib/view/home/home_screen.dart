import 'package:flutter/material.dart';
import 'package:spotify/dummy_db.dart';
import 'package:spotify/utils/constants/color_constant.dart';
import 'package:spotify/view/home/Widget/artists.dart';
import 'package:spotify/view/home/Widget/fav_artists.dart';
import 'package:spotify/view/home/Widget/jump_back.dart';
import 'package:spotify/view/home/Widget/lofi_song.dart';
import 'package:spotify/view/home/Widget/malayalam.dart';
import 'package:spotify/view/home/Widget/mixsong.dart';
import 'package:spotify/view/home/Widget/radio.dart';
import 'package:spotify/view/home/Widget/recommended.dart';
import 'package:spotify/view/home/Widget/your_playlists.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.grey.shade600,
          Colors.black,
        ], stops: [
          0.0,
          0.5,
        ], begin: Alignment.topLeft, end: Alignment.bottomLeft)),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _titleSection(),
              _PlayedList(),
              _yourplaylists(),
              _jumpPlaylist(),
              _recommendedList(),
              _fav_aetistsList(),
              _malayalamList(),
              _artistsLists(),
              _lofiSongList(),
              _mixsong(),
              _radioList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _mixsong() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Text(
            "Your top mix",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: ColorConstant.Whitecolor),
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => mixsong(
                  miximg: DummyDb.mixsong[index]['miximg'],
                  mixname: DummyDb.mixsong[index]['mixname']),
              separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
              itemCount: DummyDb.mixsong.length),
        )
      ],
    );
  }

  Widget _radioList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Text(
            "Spotify radio",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: ColorConstant.Whitecolor),
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => radio(
                  radioimg: DummyDb.Radio[index]['radioimg'],
                  radionm: DummyDb.Radio[index]['radionm']),
              separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
              itemCount: DummyDb.Radio.length),
        )
      ],
    );
  }

  Widget _lofiSongList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Text(
            "Lofi song 🎧",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: ColorConstant.Whitecolor),
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => lofi_song(
                  lofiimg: DummyDb.lofi_song[index]['lofiimg'],
                  lofiname: DummyDb.lofi_song[index]['lofiname']),
              separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
              itemCount: DummyDb.lofi_song.length),
        )
      ],
    );
  }

  Widget _artistsLists() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Text(
            "Best of artists",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: ColorConstant.Whitecolor),
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => artists(
                  imageartists: DummyDb.artists[index]['imageartists'],
                  nameartists: DummyDb.artists[index]['nameartists']),
              separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
              itemCount: DummyDb.artists.length),
        )
      ],
    );
  }

  Widget _malayalamList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Text(
            "Top malayalam song",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: ColorConstant.Whitecolor),
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => malayalam(
                  imagemal: DummyDb.malayalam[index]['imagemal'],
                  namemal: DummyDb.malayalam[index]['namemal']),
              separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
              itemCount: DummyDb.malayalam.length),
        )
      ],
    );
  }

  Widget _recommendedList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Text(
            "Recommended for today",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: ColorConstant.Whitecolor),
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => recommended(
                  imagerec: DummyDb.Recommended[index]['imagerec'],
                  namerec: DummyDb.Recommended[index]['namerec']),
              separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
              itemCount: DummyDb.Recommended.length),
        )
      ],
    );
  }

  Widget _fav_aetistsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Text(
            "Your faviourite artists",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: ColorConstant.Whitecolor),
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => fav_artists(
                  imageart: DummyDb.fav_artists[index]['imageart'],
                  name: DummyDb.fav_artists[index]['name']),
              separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
              itemCount: DummyDb.fav_artists.length),
        )
      ],
    );
  }

  Widget _jumpPlaylist() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Text(
            "Jump in back",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: ColorConstant.Whitecolor),
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => jump_back(
                  imageurl: DummyDb.JumpbacK[index]['imageurl'],
                  titlename: DummyDb.JumpbacK[index]['titlename']),
              separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
              itemCount: DummyDb.JumpbacK.length),
        )
      ],
    );
  }

  Widget _yourplaylists() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 13,
          ),
          child: Text(
            "Your playlist",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: ColorConstant.Whitecolor),
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 13),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => yourplaylists(
                    image: DummyDb.yourplaylists[index]['image'],
                    title: DummyDb.yourplaylists[index]['title'],
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
              itemCount: DummyDb.yourplaylists.length),
        )
      ],
    );
  }

  Widget _PlayedList() {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(top: 12, left: 13, right: 13),
        child: SizedBox(
          height: 260,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("asset/image/LIKE.jpg"))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Liked songs",
                    style: TextStyle(
                        fontSize: 14,
                        color: ColorConstant.Whitecolor,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("asset/image/rra.jpeg"))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Rap vibe🫵",
                    style: TextStyle(
                        fontSize: 13,
                        color: ColorConstant.Whitecolor,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("asset/image/HIT.jpeg"))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "DJ party hits",
                    style: TextStyle(
                        fontSize: 14,
                        color: ColorConstant.Whitecolor,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("asset/image/ffone.jpeg"))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Alone beats",
                    style: TextStyle(
                        fontSize: 14,
                        color: ColorConstant.Whitecolor,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("asset/image/heartbeet.jpeg"))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Heart break💔",
                    style: TextStyle(
                        fontSize: 14,
                        color: ColorConstant.Whitecolor,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("asset/image/ffthre.jpeg"))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Feels round",
                    style: TextStyle(
                        fontSize: 14,
                        color: ColorConstant.Whitecolor,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _titleSection() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
        left: 13,
        right: 13,
      ),
      child: Row(
        children: [
          Text(
            "Recently played",
            style: TextStyle(
                color: ColorConstant.Whitecolor,
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
          Spacer(),
          Icon(
            Icons.notifications_none,
            size: 25,
            color: ColorConstant.Whitecolor,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.update_outlined,
            size: 25,
            color: ColorConstant.Whitecolor,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.settings_outlined,
            size: 25,
            color: ColorConstant.Whitecolor,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
