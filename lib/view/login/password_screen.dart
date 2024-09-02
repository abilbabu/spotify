import 'package:flutter/material.dart';
import 'package:spotify/main.dart';
import 'package:spotify/utils/constants/color_constant.dart';
import 'package:spotify/view/login/email_screen.dart';
import 'package:spotify/view/login/gender.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreen();
}

class _PasswordScreen extends State<PasswordScreen> {
  final _fromkey = GlobalKey<FormState>();
  TextEditingController passwordcontroller = TextEditingController();
  bool passwordVisible = false;

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
                    builder: (context) => EmailScreen(),
                  ));
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: ColorConstant.Whitecolor,
            )),
        title: Center(
          child: Text(
            "Create Account",
            style: TextStyle(
                color: ColorConstant.Whitecolor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _fromkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create a Password",
                style: TextStyle(
                    color: ColorConstant.Whitecolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: passwordcontroller,
                obscureText: !passwordVisible,
                style: const TextStyle(color: ColorConstant.Whitecolor),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  hintText: "Password",
                  hintStyle: TextStyle(
                      color: ColorConstant.Greycolor,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: ColorConstant.Greycolor,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.white,
                      )),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.red.shade400,
                      )),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                      icon: Icon(passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off)),
                ),
                validator: (value) {
                  if (value != null && value.length < 8) {
                    return "enter the password";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Use atleast 8 characters",
                style: TextStyle(
                  color: ColorConstant.Whitecolor,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
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
                            WidgetStatePropertyAll(ColorConstant.Whitecolor)),
                    onPressed: () {
                      if (_fromkey.currentState!.validate()) {
                        SavedPassword = passwordcontroller.text;
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GenderScreen(),
                            ),
                            (route) => false);
                      } else {
                        print("failed");
                      }
                    },
                    child: Text(
                      "Next",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
