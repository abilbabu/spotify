import 'package:flutter/material.dart';
import 'package:spotify/dummy_db.dart';
import 'package:spotify/utils/constants/color_constant.dart';
import 'package:spotify/view/globalScreen/custom_setting.dart';
import 'package:spotify/view/login/login_screen.dart';

class Settingscreen extends StatelessWidget {
  const Settingscreen({super.key});

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
            "Settings",
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              _buildProfileSection(),
              SizedBox(
                height: 40,
              ),
              _buildlistSection(),
              _buildLogoutsection(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogoutsection(BuildContext context) {
    return InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                    (Route) => false);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Logout",
                    style: TextStyle(
                        color: ColorConstant.Whitecolor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.logout,
                    color: ColorConstant.Whitecolor,
                  )
                ],
              ),
            );
  }

  Widget _buildlistSection() {
    return SizedBox(
              height: 500,
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => Settinglist(
                        name: DummyDb.Settings[index]["name"],
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 20,
                      ),
                  itemCount: DummyDb.Settings.length),
            );
  }

  Widget _buildProfileSection() {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("asset/image/ep.jpeg"),
        ),
        SizedBox(
          width: 7,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Evelyn",
              style: TextStyle(
                color: ColorConstant.Whitecolor,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "View Profile",
              style: TextStyle(
                color: ColorConstant.lightGrey,
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
        Spacer(),
        Icon(
          Icons.arrow_forward_ios,
          color: ColorConstant.lightGrey,
        )
      ],
    );
  }
}
