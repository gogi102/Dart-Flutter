import 'package:flutter/material.dart';

class informationPage extends StatelessWidget {
  const informationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    const Text(
                      "내 정보",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: SizedBox(
                        height: 200,
                        child: Image.network(
                            "https://image.store.bemypet.kr/content/uploads/2021/05/03104401/%EC%8D%B8%EB%84%A4%EC%9D%BC-%EB%A6%AC%EB%A6%AC-2.png"),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "학번",
                        hintStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "이름",
                        hintStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                        ),
                        onPressed: () {},
                        child: const Text(
                          "정보변경",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
