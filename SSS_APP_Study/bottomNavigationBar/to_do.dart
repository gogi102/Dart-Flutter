import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bucket {
  String job;
  bool isDone;

  Bucket(this.job, this.isDone);
}

class todoPage extends StatefulWidget {
  const todoPage({super.key});

  @override
  State<todoPage> createState() => _todoState();
}

class _todoState extends State<todoPage> {
  List<Bucket> bucketList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "버킷 리스트",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: bucketList.isEmpty
            ? const Text("버킷 리스트를 작성해주세요.")
            : ListView.builder(
                itemCount: bucketList.length,
                itemBuilder: (context, index) {
                  Bucket bucket = bucketList[index];
                  return ListTile(
                    title: Text(
                      bucket.job,
                      style: TextStyle(
                        fontSize: 24,
                        color: bucket.isDone ? Colors.grey : Colors.black,
                        decoration: bucket.isDone
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        // 삭제 버튼
                        showDeleteDialog(context, index);
                      },
                      icon: const Icon(
                        CupertinoIcons.delete,
                      ),
                    ),
                    onTap: () {
                      // 클릭시
                      setState(() {
                        bucket.isDone = !bucket.isDone;
                      });
                    },
                  );
                },
              ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          String? job = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreatePage(),
            ),
          );
          if (job != null) {
            Bucket newBucket = Bucket(job, false);
            setState(() {
              bucketList.add(newBucket);
            });
          }
        },
      ),
    );
  }

  void showDeleteDialog(BuildContext context, int index) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("삭제 할거임?"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("취소"),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    bucketList.removeAt(index);
                  });
                  Navigator.pop(context);
                },
                child: const Text(
                  "삭제",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          );
        });
  }
}

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  TextEditingController textController = TextEditingController();
  // 입력한 값을 저장
  String? error;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "버킷리스트 작성",
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
              controller: textController,
              decoration: InputDecoration(
                hintText: "하고 싶은 일을 입력하세요",
                errorText: error,
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
                  String job = textController.text;

                  if (job.isEmpty) {
                    setState(() {
                      error = "내용을 입력해주세요";
                    });
                  } else {
                    setState(() {
                      error = null;
                    });
                    Navigator.pop(context, job);
                  }
                },
                child: const Text(
                  "추가하기",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
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
