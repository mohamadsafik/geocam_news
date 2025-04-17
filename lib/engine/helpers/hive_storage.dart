import 'dart:convert';
import 'package:hive/hive.dart';

class HiveTodoStorage {
  static const _boxName = 'todoBox';
  static const _key = 'todoList';

  static Future<void> addMessage(Map<String, dynamic> message) async {
    final box = Hive.box(_boxName);
    final List<String> list = List<String>.from(
      box.get(_key, defaultValue: []),
    );
    list.add(jsonEncode(message));
    await box.put(_key, list);
  }

  static List<Map<String, dynamic>> getAllMessages() {
    final box = Hive.box(_boxName);
    final List<String> list = List<String>.from(
      box.get(_key, defaultValue: []),
    );
    return list.map((msg) => jsonDecode(msg) as Map<String, dynamic>).toList();
  }

  static Future<void> clearMessages() async {
    final box = Hive.box(_boxName);
    await box.delete(_key);
  }
}
