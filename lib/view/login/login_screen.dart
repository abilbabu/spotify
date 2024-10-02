import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constant.dart';
import 'package:spotify/utils/constants/image_constants.dart';
import 'package:spotify/view/login/email_screen.dart';
import 'package:spotify/view/login/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.Blackcolor,
      body: Stack(
        children: [
          _buildStartScreenBgimg(),
          _buildElevatedbutton(),
        ],
      ),
    );
  }

  Widget _buildElevatedbutton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 250,
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("asset/image/spotify.png"),
                      fit: BoxFit.cover)),
            ),
            Text(
              'Millions of Songs.\nFree on Spotify.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstant.Whitecolor,
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 40),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(ColorConstant.Greencolor),
                  foregroundColor: WidgetStateProperty.all(Colors.black),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EmailScreen(),
                      ),
                      (route) => false);
                },
                child: Text("Sign Up Free",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              child: TextButton(
                style: ButtonStyle(
                    elevation: WidgetStateProperty.all(25),
                    foregroundColor:
                        WidgetStateProperty.all(ColorConstant.Whitecolor),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: ColorConstant.Whitecolor),
                      ),
                    )),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                      (route) => false);
                },
                child: Row(
                  children: [
                    SizedBox(width: 40),
                    Image.asset(
                      ImageConstants.Google_lOGO,
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(width: 60),
                    Text(
                      "Continue With Google",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              child: TextButton(
                style: ButtonStyle(
                    elevation: WidgetStateProperty.all(25),
                    foregroundColor:
                        WidgetStateProperty.all(ColorConstant.Whitecolor),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: ColorConstant.Whitecolor),
                      ),
                    )),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                      (route) => false);
                },
                child: Row(
                  children: [
                    SizedBox(width: 40),
                    Image.asset(
                      ImageConstants.Facebook_lOGO,
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(width: 60),
                    Text(
                      "Continue With Facebook",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              child: TextButton(
                style: ButtonStyle(
                    elevation: WidgetStateProperty.all(25),
                    foregroundColor:
                        WidgetStateProperty.all(ColorConstant.Whitecolor),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: ColorConstant.Whitecolor),
                      ),
                    )),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                      (route) => false);
                },
                child: Row(
                  children: [
                    SizedBox(width: 40),
                    Image.asset(
                      ImageConstants.Apple_lOGO,
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(width: 60),
                    Text(
                      "Continue With Apple",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupScreen(),
                    ));
              },
              child: Text(
                "Log in",
                style: TextStyle(
                    color: ColorConstant.Whitecolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStartScreenBgimg() {
    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(ImageConstants.START_SCREEN_BG))),
      ),
    );
  }
}
