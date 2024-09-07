import 'package:flutter/material.dart';
import 'package:spotify/dummy_db.dart';
import 'package:spotify/utils/constants/color_constant.dart';


class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.grey.shade600,
              Colors.black,
            ],
            stops: const [0.0, 0.5],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _searchSection(context),
              const SizedBox(height: 13),
              const Text(
                'Recent searches',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    final item = DummyDb.search[index];
                    return SearchList(
                      image: item['image']!,
                      name: item['name']!,
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 0),
                  itemCount: DummyDb.search.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _searchSection(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 35,
            decoration: BoxDecoration(
              color: ColorConstant.Greycolor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: const [
                SizedBox(width: 10),
                Icon(
                  Icons.search,
                  size: 15,
                  color: ColorConstant.lightGrey,
                ),
                SizedBox(width: 10),
                Text(
                  'Search',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorConstant.lightGrey,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SizedBox(
            height: 35,
            child: Center(
              child: const Text(
                'Cancel',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SearchList extends StatelessWidget {
  final String image;
  final String name;

  const SearchList({
    required this.image,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(image),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                'Artist',
                style: TextStyle(
                  color: ColorConstant.lightGrey,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
