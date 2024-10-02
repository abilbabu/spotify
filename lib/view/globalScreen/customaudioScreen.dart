import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:spotify/utils/constants/color_constant.dart';

class Customaudioscreen extends StatefulWidget {
  final String image;
  final String name;
  final String artist;

  const Customaudioscreen({
    required this.image,
    Key? key,
    required this.name,
    required this.artist,
  }) : super(key: key);

  @override
  State<Customaudioscreen> createState() => _CustomaudioscreenState();
}

class _CustomaudioscreenState extends State<Customaudioscreen> {
  bool _isFavorite = false;
  bool _isPlaying = false;
  Duration _duration = Duration();
  Duration _position = Duration();
  final AudioPlayer _player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _player.onDurationChanged.listen((duration) {
      setState(() {
        _duration = duration;
      });
    });

    _player.onPositionChanged.listen((position) {
      setState(() {
        _position = position;
      });
    });

    _player.onPlayerStateChanged.listen((state) {
      setState(() {
        _isPlaying = state == PlayerState.playing;
      });
    });
  }

  Future<void> _playAudio() async {
    try {
      await _player.play(UrlSource(
          'https://commondatastorage.googleapis.com/codeskulptor-assets/Epoq-Lepidoptera.ogg'));
    } catch (e) {
      print("Error playing audio: $e");
    }
  }

  Future<void> _stopAudio() async {
    await _player.stop();
  }

  Future<void> _togglePlayPause() async {
    if (_isPlaying) {
      await _stopAudio();
    } else {
      await _playAudio();
    }
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
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
        title: Center(
          child: Column(
            children: [
              Text(
                "Remastered Song List",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorConstant.Whitecolor),
              ),
              Text(
                widget.artist,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: ColorConstant.Whitecolor),
              )
            ],
          ),
        ),
        actions: [
          Icon(
            Icons.more_vert,
            color: ColorConstant.Whitecolor,
          ),
          SizedBox(width: 20),
        ],
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                _buildFirstSection(),
                Slider(
                  value: _position.inSeconds.toDouble(),
                  min: 0.0,
                  max: _duration.inSeconds.toDouble() > 0
                      ? _duration.inSeconds.toDouble()
                      : 1.0,
                  onChanged: (value) async {
                    final newPosition = Duration(seconds: value.toInt());
                    await _player.seek(newPosition);
                    if (_isPlaying) {
                      await _player.resume();
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${_position.inMinutes}:${(_position.inSeconds % 60).toString().padLeft(2, '0')}',
                        style: TextStyle(
                            fontSize: 14, color: ColorConstant.lightGrey),
                      ),
                      Text(
                        '${_duration.inMinutes - _position.inMinutes}:${((_duration.inSeconds - _position.inSeconds) % 60).toString().padLeft(2, '0')}',
                        style: TextStyle(
                            fontSize: 14, color: ColorConstant.lightGrey),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      iconSize: 40,
                      icon: Icon(Icons.skip_previous,
                          color: ColorConstant.lightGrey),
                      onPressed: () {},
                    ),
                    SizedBox(width: 20),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: ColorConstant.lightGrey,
                      child: IconButton(
                        onPressed: _togglePlayPause,
                        icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow,
                            size: 45, color: ColorConstant.Blackcolor),
                      ),
                    ),
                    SizedBox(width: 20),
                    IconButton(
                      iconSize: 40,
                      icon:
                          Icon(Icons.skip_next, color: ColorConstant.lightGrey),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFirstSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
          child: Container(
            height: 350,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: AssetImage(widget.image), fit: BoxFit.cover),
            ),
          ),
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: ColorConstant.Whitecolor),
                ),
                SizedBox(height: 5),
                Text(
                  widget.artist,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: ColorConstant.Whitecolor),
                )
              ],
            ),
            Spacer(),
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
          ],
        ),
      ],
    );
  }
}
