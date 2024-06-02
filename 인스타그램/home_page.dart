import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Feed.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> imges = [
      {
        "imgUrl": [
          "https://i.ibb.co/CQxfdHY/cat1.jpg",
          "https://i.ibb.co/w6wxdrQ/cat2.jpg",
          "https://i.ibb.co/GnwVqCd/cat3.jpg",
          "https://i.ibb.co/1GMKYBy/cat4.jpg",
          "https://i.ibb.co/cTGzTTX/cat5.jpg",
          "https://i.ibb.co/47Y5Ct5/cat6.jpg",
          "https://i.ibb.co/ZW38ngD/cat7.gif",
        ],
      },
      {
        "info": [
          "21113 양준석",
          "2",
          "3",
          "4",
          "5",
          "6",
          "7",
          "8",
          "9",
          "10",
        ],
      },
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.camera,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.paperplane,
              color: Colors.black,
            ),
          ),
        ],
        title: Image.asset(
          "assets/logo.png",
          height: 32,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: imges[0]['imgUrl'].length,
        itemBuilder: (context, index) {
          final String image = imges[0]['imgUrl'][index];
          final String info = imges[1]['info'][index];
          return Feed(
            imgUrl: image,
            info: info,
          );
        },
      ),
    );
  }
}
