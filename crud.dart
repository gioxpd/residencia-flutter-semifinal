import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Desejos',
      home: CrudPage(),
    );
  }
}

class Todo {
  String text;
  bool completed;

  Todo({
    required this.text,
    this.completed = false,
  });
}

class CrudPage extends StatefulWidget {
  @override
  _CrudPageState createState() => _CrudPageState();
}

class _CrudPageState extends State<CrudPage> {
  List<Todo> todos = [];
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Desejos'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(todos[index].text),
                  trailing: Checkbox(
                    value: todos[index].completed,
                    onChanged: (value) {
                      setState(() {
                        todos[index].completed = value!;
                      });
                    },
                  ),
                  onLongPress: () {
                    _deleteItem(index);
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Diga qual livro deseja que nós adicionemos',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _addItem();
            },
            child: Text('Add Livro'),
          ),
        ],
      ),
    );
  }

  void _addItem() {
    setState(() {
      todos.add(Todo(text: _controller.text));
      _controller.clear();
    });
  }

  void _deleteItem(int index) {
    setState(() {
      todos.removeAt(index);
    });
  }
}
