import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Youeplayone extends StatefulWidget {
  final String title;
  final String image;
  const Youeplayone({super.key, required this.title, required this.image});

  @override
  State<Youeplayone> createState() => _YoueplayoneState();
}

class _YoueplayoneState extends State<Youeplayone> {
  final player = AudioPlayer();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _playAudio();
  }

  Future<void> _playAudio() async {
    await player.play(AssetSource(
        "asset/audio/Nonu Rana - Palazzo (Official Video) _ Manpreet Dolly _ #newpunjabisong2024.mp3"));
  }

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
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(widget.image)),
        ),
      ),
    ));
  }
}
