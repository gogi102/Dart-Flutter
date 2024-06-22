import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _CreatePageState();
}

class _CreatePageState extends State<LoginPage> {
  TextEditingController idController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  String? idError;
  String? passwordError;
  String? phoneError;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "로그인 페이지",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              autofocus: true,
              controller: idController,
              decoration: InputDecoration(
                label: const Text("아이디"),
                errorText: idError,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            TextField(
              autofocus: true,
              controller: passwordController,
              decoration: InputDecoration(
                label: const Text("비밀번호"),
                errorText: passwordError,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            TextField(
              autofocus: true,
              controller: phoneController,
              decoration: InputDecoration(
                label: const Text("전화번호"),
                errorText: phoneError,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  String id = idController.text;
                  String password = passwordController.text;
                  String phone = phoneController.text;

                  String trueId = "yjs1234";
                  String truePassword = "1234";
                  String truePhone = "01012341234";

                  if (id.isEmpty) {
                    setState(() {
                      idError = "아이디를 입력해주세요";
                      passwordError = null;
                      phoneError = null;
                    });
                  } else if (password.isEmpty) {
                    setState(() {
                      passwordError = "비밀번호를 입력해주세요";
                      idError = null;
                      phoneError = null;
                    });
                  } else if (phone.isEmpty) {
                    setState(() {
                      phoneError = "전화번호를 입력해주세요";
                      idError = null;
                      passwordError = null;
                    });
                  } else if (id == trueId &&
                      password == truePassword &&
                      phone == truePhone) {
                    setState(() {
                      idError = null;
                      passwordError = null;
                      phoneError = null;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Task(),
                      ),
                    );
                  } else {
                    Membership_information(context);
                  }
                },
                child: const Text(
                  "로그인",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void Membership_information(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("옳지않은 정보입니다"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "확인",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      });
}

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "과제 끝?",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
