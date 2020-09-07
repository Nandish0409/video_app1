import 'package:firebase_auth/firebase_auth.dart';
import 'package:video_app1/resources/firebase_methods.dart';
import 'firebase_methods.dart';

class FirebaseRepository {
  FirebaseMethods _firebaseMethods = FirebaseMethods();

  Future<User> getCurrentUser() => _firebaseMethods.getCurrentUser();

  Future<User> signIn() => _firebaseMethods.signIn();

  Future<bool> authenticateUser(User user) =>
      _firebaseMethods.authenticateUser(user);

  Future<void> addDataToDb(User user) => _firebaseMethods.addDataToDb(user);

  ///responsible for signing out
  Future<void> signOut() => _firebaseMethods.signOut();
}
