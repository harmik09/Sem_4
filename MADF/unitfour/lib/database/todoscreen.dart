import 'package:flutter/material.dart';
import 'package:unitfour/database/database.dart';

class Todoscreen extends StatefulWidget {
  const Todoscreen({super.key});

  @override
  _TodoscreenState createState() => _TodoscreenState();
}

class _TodoscreenState extends State<Todoscreen> {
  final TextEditingController _todoController = TextEditingController();
  List<Map<String, dynamic>> _todoList = [];

  @override
  void initState() {
    super.initState();
    _loadTodos();
  }

  Future<void> _loadTodos() async {
    final todos = await MyDatabase.instance.fetchTodos();
    setState(() {
      _todoList = todos;
    });
  }

  Future<void> _insertTodo() async {
    if (_todoController.text.isNotEmpty) {
      await MyDatabase.instance.insertTodo(_todoController.text);
      _todoController.clear();
      _loadTodos();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Todo Added Successfully')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a todo')),
      );
    }
  }

  Future<void> _editTodo(int id, String currentTitle) async {
    TextEditingController editController = TextEditingController(text: currentTitle);

    await showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text("Edit Todo"),
          content: TextFormField(
            controller: editController,
            decoration: const InputDecoration(
              labelText: "Update your todo",
              border: OutlineInputBorder(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () async {
                if (editController.text.isNotEmpty) {
                  await MyDatabase.instance.updateTodo(id, editController.text);
                  _loadTodos();
                  Navigator.of(dialogContext).pop();
                }
              },
              child: const Text("Save"),
            ),
          ],
        );
      },
    );
  }

  Future<void> _deleteTodo(int id) async {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text("Delete Todo"),
          content: const Text("Are you sure you want to delete this todo?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: const Text("No"),
            ),
            TextButton(
              onPressed: () async {
                await MyDatabase.instance.deleteTodo(id);
                _loadTodos();
                Navigator.of(dialogContext).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Todo Deleted Successfully')),
                );
              },
              child: const Text("Yes"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Todo List")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: _todoController,
              decoration: const InputDecoration(
                labelText: 'Enter todo',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _insertTodo,
              child: const Text("Save"),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: _todoList.isEmpty
                  ? const Center(child: Text("No Todos Found"))
                  : ListView.builder(
                itemCount: _todoList.length,
                itemBuilder: (context, index) {
                  final todo = _todoList[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      title: Text(todo['title']),
                      leading: const Icon(Icons.check_circle, color: Colors.green),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit, color: Colors.blue),
                            onPressed: () => _editTodo(todo['id'], todo['title']),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () => _deleteTodo(todo['id']),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
