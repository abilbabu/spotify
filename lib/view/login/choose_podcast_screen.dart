import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constant.dart';
import 'package:spotify/view/bottamnavbar_screen/bottam_navbar_screen.dart';

class ChoosePodcastScreen extends StatefulWidget {
  const ChoosePodcastScreen({super.key});

  @override
  State<ChoosePodcastScreen> createState() => _ChoosePodcastScreenState();
}

class _ChoosePodcastScreenState extends State<ChoosePodcastScreen> {
  List<Map<String, String>> items = [
    {"image": "asset/image/BTS-Spotify.jpg", "name": "BTS"},
    {"image": "asset/image/kj.webp", "name": "K. J. Yesudas Hit"},
    {"image": "asset/image/arijit.jpeg", "name": "Arijit Singh Top Hit"},
    {"image": "asset/image/prone.jpg", "name": "Top Podcasts"},
    {"image": "asset/image/rap.jpeg", "name": "The RapCaviar Podcast"},
    {"image": "asset/image/Slow.jpeg", "name": "Slow Burn"},
    {"image": "asset/image/maahaa.jpeg", "name": "The MaaHaa Podcast"},
    {"image": "asset/image/giving.jpeg", "name": "Giving Voice to Depression"},
    {"image": "asset/image/prone.jpg", "name": "Top Podcasts"},
    {"image": "asset/image/Slow.jpeg", "name": "Slow Burn"},
    {"image": "asset/image/rap.jpeg", "name": "The RapCaviar Podcast"},
    {"image": "asset/image/BTS-Spotify.jpg", "name": "BTS"},
    {"image": "asset/image/giving.jpeg", "name": "Giving Voice to Depression"},
    {"image": "asset/image/arijit.jpeg", "name": "Arijit Singh Top Hit"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.Blackcolor,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          height: 40,
          width: 150,
          child: FloatingActionButton(
            backgroundColor: ColorConstant.Whitecolor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomnavbarScreen(),
                ),
              );
            },
            child: Text(
              "Done",
              style: TextStyle(
                  color: ColorConstant.Blackcolor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                "Now choose some podcasts.",
                style: TextStyle(
                  color: ColorConstant.Whitecolor,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 10),
                    Icon(Icons.search, color: Colors.black),
                    SizedBox(width: 20),
                    Text(
                      "Search",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.7,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(item['image']!),
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            color: Colors.black54,
                            width: double.infinity,
                            padding: EdgeInsets.all(8),
                            child: Text(
                              item['name']!,
                              style: TextStyle(
                                color: ColorConstant.Whitecolor,
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
