import 'package:flutter/material.dart';
import 'package:spotify/dummy_db.dart';
import 'package:spotify/utils/constants/color_constant.dart';
import 'package:spotify/view/login/choose_podcast_screen.dart';
import 'package:spotify/view/login/verify_screen.dart';

class ChooseScreen extends StatefulWidget {
  const ChooseScreen({super.key});

  @override
  _ChooseScreenState createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  List<int> selectedIndices = [];

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
        onPressed: selectedIndices.length >= 3
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
                  childAspectRatio: 0.7,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ),
                itemCount: DummyDb.items.length,
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
                    child: Container(
                      decoration: BoxDecoration(
                        color: isSelected
                            ? Colors.blue.withOpacity(0.2)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                                DummyDb.items[index]['circleImage']!),
                            child: isSelected
                                ? Icon(Icons.check, color: Colors.blue)
                                : null,
                          ),
                          SizedBox(height: 8),
                          Text(
                            DummyDb.items[index]['name']!,
                            style: TextStyle(
                                color: ColorConstant.Whitecolor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
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
