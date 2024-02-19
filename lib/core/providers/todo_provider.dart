import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_enhanced/core/models/user_model.dart';

final categoriesProvider = FutureProvider<List<String>>((ref) async {
  var data = await FirebaseFirestore.instance
      .collection('userdata')
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .get();

  UserModel model = UserModel.fromJson(data.data()!);
  return model.categories;
});
