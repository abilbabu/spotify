import 'package:flutter/material.dart';
import 'package:spotify/main.dart';
import 'package:spotify/utils/constants/color_constant.dart';
import 'package:spotify/view/login/password_screen.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  final _fromkey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.Blackcolor,
      appBar: AppBar(
        backgroundColor: ColorConstant.Blackcolor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
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
                "What's your Email ID?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                  controller: emailcontroller,
                  style: const TextStyle(color: ColorConstant.Whitecolor),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    hintText: "Eamil Address",
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
                          color: ColorConstant.Whitecolor,
                        )),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.red.shade400,
                        )),
                  ),
                  validator: (value) {
                    String pattern =
                        r'^([a-zA-Z0-9._%+-]+)@([a-zA-Z0-9.-]+\.[a-zA-Z]{2,})$';
                    if (value != null && RegExp(pattern).hasMatch(value)) {
                      return null;
                    } else {
                      return "Enter the email address";
                    }
                  }),
              SizedBox(
                height: 10,
              ),
              Text(
                "You'll need to confirm this email later",
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
                        SavedEmail = emailcontroller.text;
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PasswordScreen(),
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
