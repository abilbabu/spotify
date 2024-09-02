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
      body: Column(
        children: [
          _buildStartScreenBgimg(),
          // background image set
          _buildElevatedbutton(),
          //elavated buttons,navigtor,css
        ],
      ),
    );
  }

  Widget _buildElevatedbutton() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    WidgetStatePropertyAll(ColorConstant.Greencolor),
                foregroundColor: WidgetStatePropertyAll(Colors.black),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupScreen(),
                    ),
                    (route) => false);
              },
              child: Text("Sign Up Free",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            child: TextButton(
              style: ButtonStyle(
                  elevation: WidgetStatePropertyAll(25),
                  foregroundColor:
                      WidgetStatePropertyAll(ColorConstant.Whitecolor),
                  shape: WidgetStatePropertyAll(
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
                  SizedBox(
                    width: 40,
                  ),
                  Image.asset(
                    ImageConstants.Google_lOGO,
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    "Continue With Google",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            child: TextButton(
              style: ButtonStyle(
                  elevation: WidgetStatePropertyAll(25),
                  foregroundColor:
                      WidgetStatePropertyAll(ColorConstant.Whitecolor),
                  shape: WidgetStatePropertyAll(
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
                  SizedBox(
                    width: 40,
                  ),
                  Image.asset(
                    ImageConstants.Facebook_lOGO,
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    "Continue With Facebook",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            child: TextButton(
              style: ButtonStyle(
                  elevation: WidgetStatePropertyAll(25),
                  foregroundColor:
                      WidgetStatePropertyAll(ColorConstant.Whitecolor),
                  shape: WidgetStatePropertyAll(
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
                  SizedBox(
                    width: 40,
                  ),
                  Image.asset(
                    ImageConstants.Apple_lOGO,
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    "Continue With Apple",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
                    builder: (context) => EmailScreen(),
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
    );
  }

  Widget _buildStartScreenBgimg() {
    return Container(
      height: 450,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(ImageConstants.START_SCREEN_BG))),
    );
  }
}
