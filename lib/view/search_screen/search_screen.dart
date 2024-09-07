import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/color_constant.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.grey.shade600,
          Colors.black,
        ], stops: [
          0.0,
          0.5,
        ], begin: Alignment.topLeft, end: Alignment.bottomLeft)),
        child: Column(
          children: [
            _titleSection(),
          ],
        ),
      ),
    );
  }

  Widget _titleSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 38),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Search",
                style: TextStyle(
                    color: ColorConstant.Whitecolor,
                    fontSize: 23,
                    fontWeight: FontWeight.w700),
              ),
              Spacer(),
              Icon(
                Icons.camera_alt_outlined,
                size: 25,
                color: ColorConstant.Whitecolor,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: " Artists, songs, or podcasts",
                hintStyle: TextStyle(
                    color: ColorConstant.lightGrey,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorConstant.lightGrey),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorConstant.lightGrey),
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorConstant.lightGrey,
                )),
          )
        ],
      ),
    );
  }
}
