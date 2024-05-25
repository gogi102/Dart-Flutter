import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> dataList = [
      {
        "category": "수제버거",
        "imgUrl": "https://i.ibb.co/VtK43vv/burger.jpg",
      },
      {
        "category": "건강식",
        "imgUrl": "https://i.ibb.co/2KbN5pV/soup.jpg",
      },
      {
        "category": "한식",
        "imgUrl": "https://i.ibb.co/KXJD0rN/korean-meals.jpg",
      },
      {
        "category": "디저트",
        "imgUrl": "https://i.ibb.co/9Yn3t0w/tiramisu.jpg",
      },
      {
        "category": "피자",
        "imgUrl": "https://i.ibb.co/P9nKtt2/pizza.jpg",
      },
      {
        "category": "볶음밥",
        "imgUrl": "https://i.ibb.co/3svVzM1/shakshuka.jpg",
      },
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.black,
        backgroundColor: Colors.blueAccent,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          "Food Recipe",
          style: GoogleFonts.getFont(
            "Oswald",
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("유저버튼 클릭됨");
            },
            icon: const Icon(
              Icons.person_outline,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              decoration: InputDecoration(
                hintText: "상품을 검색해주세요",
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    print("검색버튼 클릭됨");
                  },
                  icon: const Icon(Icons.search),
                ),
              ),
            ),
          ),
          const Divider(
            height: 1,
            thickness: 2,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: dataList.length, // 6
              itemBuilder: (context, index) {
                // 0 ~ 5까지 for문?
                Map<String, dynamic> data = dataList[index];
                // index = 0일때
                String category = data['category'];
                // 수제버거
                String imgUrl = data['imgUrl'];
                // 첫번째 Url
                return Card(
                  // 6번의 리턴이 일어남
                  margin: const EdgeInsets.all(8),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.network(
                        imgUrl,
                        width: double.infinity,
                        height: 120,
                        fit: BoxFit.cover,
                        //이미지를 해상도에 맞춰서 이미지 크기 조정
                      ),
                      Container(
                        width: double.infinity,
                        height: 120,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      Text(
                        category,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              margin: const EdgeInsets.all(0),
              decoration: const BoxDecoration(
                color: Colors.amber,
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 36,
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          "https://i.ibb.co/CwzHq4z/trans-logo-512.png",
                          width: 62,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    const Text(
                      "21113-양준석",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "hello@world.com",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 12 / 4,
              child: PageView(
                children: [
                  Image.network(
                    "https://i.ibb.co/Q97cmkg/sale-event-banner1.jpg",
                  ),
                  Image.network(
                    "https://i.ibb.co/GV78j68/sale-event-banner2.jpg",
                  ),
                  Image.network(
                    "https://i.ibb.co/R3P3RHw/sale-event-banner3.jpg",
                  ),
                  Image.network(
                    "https://i.ibb.co/LRb1VYs/sale-event-banner4.jpg",
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text("구매내역"),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // 눌렸을때
                Navigator.pop(context); // 자기자신인 Drawer를 PoP 시킴
              },
            ),
            ListTile(
              title: const Text("저장한 레시피"),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("저장한 레시피"),
      ),
    );
  }
}
