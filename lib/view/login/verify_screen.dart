import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constant.dart';
import 'package:spotify/view/login/choose_screen.dart';
import 'package:spotify/view/login/gender.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  String? _privacy;
  String? _marketing;

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
                  builder: (context) => GenderScreen(),
                ));
          },
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
        ),
        title: Center(
          child: Text(
            "Create Account",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("What's Your Name?",
                    style: TextStyle(
                        color: ColorConstant.Whitecolor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                TextFormField(
                  controller: nameController,
                  style: const TextStyle(color: ColorConstant.Whitecolor),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    hintText: "Name",
                    hintStyle:
                        TextStyle(color: ColorConstant.Greycolor, fontSize: 16),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: ColorConstant.Greycolor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: ColorConstant.Whitecolor),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red.shade400),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                Text(
                  "This appears on your Spotify profile",
                  style:
                      TextStyle(color: ColorConstant.Whitecolor, fontSize: 10),
                ),
                SizedBox(height: 10),
                Text(
                  """By tapping on "Create an Account", you agree to the Spotify Terms of Use""",
                  style:
                      TextStyle(color: ColorConstant.Whitecolor, fontSize: 13),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Terms of Use",
                    style: TextStyle(
                        color: ColorConstant.Greencolor,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  """To learn more about how Spotify collects, uses, shares, and protects your personal data, please see the Privacy Policy""",
                  style:
                      TextStyle(color: ColorConstant.Whitecolor, fontSize: 13),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Privacy Policy",
                    style: TextStyle(
                        color: ColorConstant.Greencolor,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "Please send me news and offers from Spotify",
                        style: TextStyle(
                            color: ColorConstant.Whitecolor, fontSize: 13),
                      ),
                    ),
                    Radio<String>(
                      value: "true",
                      groupValue: _privacy,
                      onChanged: (value) {
                        setState(() {
                          _privacy = value;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        """Share my registration data with Spotify's content providers for marketing purposes""",
                        style: TextStyle(
                            color: ColorConstant.Whitecolor, fontSize: 13),
                      ),
                    ),
                    Radio<String>(
                      value: "true",
                      groupValue: _marketing,
                      onChanged: (value) {
                        setState(() {
                          _marketing = value;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 170),
                Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(ColorConstant.Whitecolor),
                      foregroundColor:
                          WidgetStateProperty.all(ColorConstant.Blackcolor),
                    ),
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChooseScreen()),
                          (route) => false,
                        );
                      } else {
                        print("Form validation failed");
                      }
                    },
                    child: Text(
                      "Create an Account",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
