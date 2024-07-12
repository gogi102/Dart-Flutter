import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Todo {
  String things;
  bool isDone;

  Todo(this.things, this.isDone);
}

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List<Todo> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "todo리스트",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: todoList.isEmpty
            ? const Text("todo리스트를 작성해주세요.")
            : ListView.builder(
                itemCount: todoList.length,
                itemBuilder: (context, index) {
                  Todo todo = todoList[index];
                  return ListTile(
                    title: Text(
                      todo.things,
                      style: TextStyle(
                        fontSize: 24,
                        color: todo.isDone ? Colors.grey : Colors.black,
                        decoration: todo.isDone
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
                        todo.isDone = !todo.isDone;
                      });
                    },
                  );
                },
              ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          String? things = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreatePage(),
            ),
          );
          if (things != null) {
            Todo newtodo = Todo(things, false);
            setState(() {
              todoList.add(newtodo);
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
                    todoList.removeAt(index);
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
          "todo리스트 작성",
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
                hintText: "해야 할 일을 입력하세요",
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
                  String things = textController.text;

                  if (things.isEmpty) {
                    setState(() {
                      error = "내용을 입력해주세요";
                    });
                  } else {
                    setState(() {
                      error = null;
                    });
                    Navigator.pop(context, things);
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
