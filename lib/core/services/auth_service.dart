import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_todo_enhanced/core/services/data_service.dart';

class AuthService {
  // initialize firebase
  final FirebaseAuth auth = FirebaseAuth.instance;

  // signIn user to the firebase
  Future<UserCredential> signInUser(String email, String password) async {
    UserCredential userCredential = await auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    return userCredential;
  }

  // create a new user
  Future<UserCredential> createUser(
      String email, String password, String name) async {
    UserCredential userCredential = await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    await DataService().createUserData(userCredential, name);

    return userCredential;
  }

  // sign out the current user
  void signOutUser() async {
    await auth.signOut();
  }
}
