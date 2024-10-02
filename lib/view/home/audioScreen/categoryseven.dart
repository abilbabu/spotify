import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:spotify/dummy_db.dart';
import 'package:spotify/utils/constants/color_constant.dart';
import 'package:spotify/view/globalScreen/custom_containar.dart';
import 'package:spotify/view/globalScreen/customaudioScreen.dart';

class Categoryseven extends StatefulWidget {
  final String title;
  final String image;
  const Categoryseven({super.key, required this.title, required this.image});

  @override
  State<Categoryseven> createState() => _CategorysevenState();
}

class _CategorysevenState extends State<Categoryseven> {
  bool _isFavorite = false;
  bool _isPlay = false;
  final player = AudioPlayer();
  @override
  void initState() {
    super.initState();
  }

  Future<void> _playAudio() async {
    await player.play(UrlSource(
        'https://commondatastorage.googleapis.com/codeskulptor-assets/Epoq-Lepidoptera.ogg'));
  }

  Future<void> _stopAudio() async {
    await player.stop();
  }

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
        ),
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                _buildimagesection(),
                SizedBox(
                  height: 40,
                ),
                _buildtitlesection(),
                SizedBox(
                  height: 12,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (_isPlay) {
                            _stopAudio();
                          } else {
                            _playAudio();
                          }
                          _isPlay = !_isPlay;
                        });
                      },
                      child: SizedBox(
                        height: 1500,
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            final musicItem = DummyDb.Music[index];
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Customaudioscreen(
                                      image: musicItem['image'],
                                      name: musicItem['name'],
                                      artist: musicItem['artist'],
                                    ),
                                  ),
                                );
                              },
                              child: custommusiclist(
                                name: musicItem['name'],
                                artist: musicItem['artist'],
                                image: musicItem['image'],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              SizedBox(width: 16),
                          itemCount: DummyDb.Music.length,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Widget _buildtitlesection() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                color: ColorConstant.Whitecolor,
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("asset/image/ar.jpeg"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'The Beatles',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Album . 2024',
              style: TextStyle(
                color: Color(0xFFB3B3B3),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _isFavorite = !_isFavorite;
                    });
                  },
                  icon: Icon(
                    _isFavorite ? Icons.favorite : Icons.favorite_border,
                    size: 30,
                    color: _isFavorite
                        ? ColorConstant.Greencolor
                        : ColorConstant.Grey2,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  radius: 12,
                  backgroundColor: ColorConstant.Greencolor,
                  child: Icon(
                    Icons.download,
                    color: ColorConstant.Blackcolor,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Icon(
                  size: 30,
                  Icons.more_horiz,
                  color: ColorConstant.Grey2,
                ),
              ],
            )
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 30,
          backgroundColor: ColorConstant.Greencolor,
          child: IconButton(
            onPressed: () {
              setState(() {
                if (_isPlay) {
                  _stopAudio();
                } else {
                  _playAudio();
                }
                _isPlay = !_isPlay;
              });
            },
            icon: Icon(_isPlay ? Icons.pause : Icons.play_arrow,
                size: 45,
                color: _isFavorite
                    ? ColorConstant.Blackcolor
                    : ColorConstant.Blackcolor),
          ),
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }

  Widget _buildimagesection() {
    return Container(
      height: 226,
      width: 224,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(widget.image)),
      ),
    );
  }
}
