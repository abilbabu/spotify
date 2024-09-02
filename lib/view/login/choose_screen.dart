import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constant.dart';
import 'package:spotify/view/login/choose_podcast_screen.dart';
import 'package:spotify/view/login/verify_screen.dart';

class ChooseScreen extends StatefulWidget {
  const ChooseScreen({super.key});

  @override
  State<ChooseScreen> createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  List<Map<String, String>> items = [
    {"circleImage": "asset/image/ar.jpeg", "name": "A. R. Rahman"},
    {"circleImage": "asset/image/arijit.jpeg", "name": "Arijit Singh"},
    {"circleImage": "asset/image/billie.jpeg", "name": "Billie Eilish"},
    {"circleImage": "asset/image/walker.jpeg", "name": "Alan Walker"},
    {"circleImage": "asset/image/taylor.jpeg", "name": "Taylor Swift"},
    {"circleImage": "asset/image/BTS-Spotify.jpg", "name": "BTS"},
    {"circleImage": "asset/image/noah.jpg", "name": "Noah Georgeson"},
    {"circleImage": "asset/image/kj.webp", "name": "K. J. Yesudas"},
    {"circleImage": "asset/image/ep.jpeg", "name": "A.R"},
    {"circleImage": "asset/image/chan.jpeg", "name": "Jaycee Chan"},
    {"circleImage": "asset/image/hyunjin.jpeg", "name": "Hyunjin"},
    {"circleImage": "asset/image/blinding.jpeg", "name": "Blinding Lights"},
    {"circleImage": "asset/image/eminem.jpeg", "name": "Eminem"},
    {"circleImage": "asset/image/bad.jpeg", "name": "Bad Bunny"},
  ];

  Set<int> selectedIndices = Set<int>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.Blackcolor,
      appBar: AppBar(
        backgroundColor: ColorConstant.Blackcolor,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => VerifyScreen(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back_ios_new, color: ColorConstant.Whitecolor),
        ),
        title: Center(
          child: Text(
            "Choose 3 or more artists you like",
            style: TextStyle(
              color: ColorConstant.Whitecolor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.transparent,
        onPressed: selectedIndices.length == 3
            ? () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChoosePodcastScreen(),
                  ),
                );
              }
            : null,
        child: Text(
          "Next",
          style: TextStyle(
              color: ColorConstant.Whitecolor,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(17),
        child: Column(
          children: [
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
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.7,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final isSelected = selectedIndices.contains(index);
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (isSelected) {
                          selectedIndices.remove(index);
                        } else if (selectedIndices.length < 3) {
                          selectedIndices.add(index);
                        }
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor:
                              isSelected ? Colors.transparent : Colors.grey,
                          child: isSelected
                              ? Icon(Icons.check, color: Colors.blue)
                              : null,
                          backgroundImage:
                              AssetImage(items[index]['circleImage']!),
                        ),
                        SizedBox(height: 8),
                        Text(
                          items[index]['name']!,
                          style: TextStyle(
                              color: ColorConstant.Whitecolor,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
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
    );
  }
}
