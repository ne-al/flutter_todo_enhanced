// here all the data crud operation happens
// such as creating user data, todos data, new todo category etc.

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_todo_enhanced/core/models/todo_model.dart';
import 'package:flutter_todo_enhanced/core/models/user_model.dart';
import 'package:uuid/uuid.dart';

class DataService {
  // initialized firestore
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // create user data
  Future<void> createUserData(
      UserCredential userCredential, String name) async {
    UserModel userModel = UserModel(
      name: name,
      email: userCredential.user!.email!,
      uid: userCredential.user!.uid,
      createdAt: DateTime.now(),
    );

    await firestore
        .collection('userdata')
        .doc(userCredential.user!.uid)
        .set(userModel.toJson());
  }

  Future<void> addTodo(
      String title, String description, String category) async {
    final todoId = const Uuid().v4();
    final userUid = FirebaseAuth.instance.currentUser!.uid;
    TodoModel todoModel = TodoModel(
      todo_title: title,
      category: category,
      createdAt: DateTime.now(),
      authorId: userUid,
      todoId: todoId,
      isCompleted: false,
      todo_description: description,
      isEdited: false,
    );

    await firestore
        .collection('all_todo')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('todos')
        .doc(todoId)
        .set(todoModel.toJson());
  }
}
