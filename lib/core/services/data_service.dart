// here all the data crud operation happens
// such as creating user data, todos data, new todo category etc.

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_todo_enhanced/core/models/user_model.dart';

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
}
