import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constant.dart';
import 'package:spotify/view/login/password_screen.dart';
import 'package:spotify/view/login/verify_screen.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  String? _gender;

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
                  builder: (context) => PasswordScreen(),
                ));
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: ColorConstant.Whitecolor,
          ),
        ),
        title: Center(
          child: Text(
            "Create Account",
            style: TextStyle(
              color: ColorConstant.Whitecolor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What's Your Gender?",
              style: TextStyle(
                color: ColorConstant.Whitecolor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: ColorConstant.Whitecolor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButton<String>(
                hint: Text("Gender",
                    style: TextStyle(color: ColorConstant.Blackcolor)),
                value: _gender,
                items: [
                  DropdownMenuItem(
                    child: Text("Male",
                        style: TextStyle(color: ColorConstant.Blackcolor)),
                    value: "Male",
                  ),
                  DropdownMenuItem(
                    child: Text("Female",
                        style: TextStyle(color: ColorConstant.Blackcolor)),
                    value: "Female",
                  ),
                  DropdownMenuItem(
                    child: Text("Others",
                        style: TextStyle(color: ColorConstant.Blackcolor)),
                    value: "Others",
                  ),
                ],
                onChanged: (String? value) {
                  setState(() {
                    _gender = value;
                  });
                },
                dropdownColor: ColorConstant.Whitecolor,
                iconEnabledColor: ColorConstant.Whitecolor,
                isExpanded: true,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(ColorConstant.Greycolor),
                      foregroundColor:
                          WidgetStatePropertyAll(ColorConstant.Blackcolor)),
                  onPressed: () {
                    if (_gender != null) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VerifyScreen(),
                          ),
                          (route) => false);
                    } else {
                      print("failed");
                    }
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                        color: ColorConstant.Whitecolor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
