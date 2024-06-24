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
      body: SingleChildScrollView(
        // 이미지로 인한 키보드 오버플로우 방지
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              Image.network(
                "https://i.ibb.co/CwzHq4z/trans-logo-512.png",
                width: 150,
                height: 180,
              ),
              const SizedBox(
                height: 50,
              ),
              TextField(
                autofocus: true,
                controller: idController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  label: const Text(
                    "ID",
                    style: TextStyle(color: Colors.grey),
                  ),
                  errorText: idError,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              TextField(
                autofocus: true,
                controller: passwordController,
                obscureText: true, // 텍스트 숨기기
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  label: const Text(
                    "Password",
                    style: TextStyle(color: Colors.grey),
                  ),
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
                  border: const OutlineInputBorder(),
                  label: const Text(
                    "Phone Number",
                    style: TextStyle(color: Colors.grey),
                  ),
                  errorText: phoneError,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                width: 120,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent),
                  onPressed: () {
                    String id = idController.text;
                    String password = passwordController.text;
                    String phone = phoneController.text;

                    String trueId = "yjs1234";
                    String truePassword = "1234";
                    String truePhone = "01012341234";

                    if (id.isEmpty) {
                      setState(() {
                        idError = "ID를 입력해주세요";
                        passwordError = null;
                        phoneError = null;
                      });
                    } else if (password.isEmpty) {
                      setState(() {
                        passwordError = "Password를 입력해주세요";
                        idError = null;
                        phoneError = null;
                      });
                    } else if (phone.isEmpty) {
                      setState(() {
                        phoneError = "PhoneNumber를 입력해주세요";
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
                      if (id != trueId) {
                        setState(() {
                          idError = "옳지 않은 ID입니다";
                          passwordError = null;
                          phoneError = null;
                        });
                      } else if (password != truePassword) {
                        setState(() {
                          passwordError = "옳지 않은 Password입니다";
                          idError = null;
                          phoneError = null;
                        });
                      } else if (phone != truePhone) {
                        setState(() {
                          phoneError = "옳지 않은 PhoneNumber입니다";
                          idError = null;
                          passwordError = null;
                        });
                      }
                    }
                  },
                  child: const Text(
                    "로그인",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
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
    },
  );
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
