import 'package:flutter/material.dart';
import 'package:todolist/view/todo_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _todoInput = '';
  List<String> _todoList = ['123'];
  final TextEditingController _textEditingController = TextEditingController();

  void _handleTextFieldChange(String input) {
    setState(() {
      _todoInput = input;
    });
  }

  void _handleAddNewTodo() {
    setState(() {
      _todoList = [..._todoList, _todoInput];
      _todoInput = '';
      _textEditingController.text = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Todo List',
            ),
            TextField(
              onChanged: (input) {
                _handleTextFieldChange(input);
              },
              onSubmitted: (_) {
                _handleAddNewTodo();
              },
              controller: _textEditingController,
            ),
            Text(
              '目前的Todo:',
              style: Theme.of(context).textTheme.headline4,
            ),
            ..._todoList.map(
              (todo) => TodoCard(todoContent: todo),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _handleAddNewTodo,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
