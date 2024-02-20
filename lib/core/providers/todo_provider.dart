import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_enhanced/core/models/todo_model.dart';
import 'package:flutter_todo_enhanced/core/models/user_model.dart';

final categoriesProvider =
    FutureProvider.autoDispose<List<String>>((ref) async {
  var response = await FirebaseFirestore.instance
      .collection('userdata')
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .get();

  Map<String, dynamic> data = response.data()!;

  UserModel model = UserModel.fromJson(data);

  return model.categories;
});

final getAllTodosProvider = StreamProvider.autoDispose<List<TodoModel>>((ref) {
  return FirebaseFirestore.instance
      .collection('all_todo')
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .collection('todos')
      .orderBy('createdAt', descending: true)
      .snapshots()
      .map((event) {
    List<TodoModel> model = [];

    for (var doc in event.docs) {
      model.add(TodoModel.fromJson(doc.data()));
    }

    return model;
  });
});
