import 'package:flutter/material.dart';
import 'package:flutter_application_1/homePage.dart';
import 'package:flutter_application_1/informations.dart';
import 'package:flutter_application_1/to_do.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Miso(),
    );
  }
}

class Miso extends StatefulWidget {
  const Miso({super.key});

  @override
  State<Miso> createState() => _MisoState();
}

class _MisoState extends State<Miso> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        // 메뉴를 이동시 초기화를 막아줌?
        index: currentIndex,
        children: const [
          homePage(),
          TodoPage(),
          informationPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex, // 현재 보여주는 탭
        onTap: (newIndex) {
          print("selected newIndex : $newIndex");
          // 다른 페이지로 이동
          setState(() {
            currentIndex = newIndex;
          });
        },
        selectedItemColor: Colors.blueAccent, // 선택됬을때
        unselectedItemColor: Colors.grey, // 선택되지 않았을때
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "홈",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Todo",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "내정보",
          ),
        ],
      ),
    );
  }
}
