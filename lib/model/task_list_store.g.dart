// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TaskListStore on _TaskListStore, Store {
  late final _$_TaskListStoreActionController =
      ActionController(name: '_TaskListStore', context: context);

  @override
  void add(String description) {
    final _$actionInfo = _$_TaskListStoreActionController.startAction(
        name: '_TaskListStore.add');
    try {
      return super.add(description);
    } finally {
      _$_TaskListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void change(String id, String description, bool concluded) {
    final _$actionInfo = _$_TaskListStoreActionController.startAction(
        name: '_TaskListStore.change');
    try {
      return super.change(id, description, concluded);
    } finally {
      _$_TaskListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
