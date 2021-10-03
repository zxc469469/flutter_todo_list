// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoViewModel on _TodoViewModel, Store {
  final _$todoListAtom = Atom(name: '_TodoViewModel.todoList');

  @override
  List<TodoModel> get todoList {
    _$todoListAtom.reportRead();
    return super.todoList;
  }

  @override
  set todoList(List<TodoModel> value) {
    _$todoListAtom.reportWrite(value, super.todoList, () {
      super.todoList = value;
    });
  }

  final _$_TodoViewModelActionController =
      ActionController(name: '_TodoViewModel');

  @override
  void removeTodo(int hashCode) {
    final _$actionInfo = _$_TodoViewModelActionController.startAction(
        name: '_TodoViewModel.removeTodo');
    try {
      return super.removeTodo(hashCode);
    } finally {
      _$_TodoViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTodo(String input) {
    final _$actionInfo = _$_TodoViewModelActionController.startAction(
        name: '_TodoViewModel.addTodo');
    try {
      return super.addTodo(input);
    } finally {
      _$_TodoViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleStatus(int hashCode) {
    final _$actionInfo = _$_TodoViewModelActionController.startAction(
        name: '_TodoViewModel.toggleStatus');
    try {
      return super.toggleStatus(hashCode);
    } finally {
      _$_TodoViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todoList: ${todoList}
    ''';
  }
}