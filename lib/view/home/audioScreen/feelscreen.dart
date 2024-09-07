import 'package:flutter/material.dart';

class Feelscreen extends StatelessWidget {
  const Feelscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
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
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back)),
                Text("feel",style: TextStyle(color: Colors.amber))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
