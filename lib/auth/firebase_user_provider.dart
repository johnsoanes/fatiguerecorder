import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FatigueRecorderFirebaseUser {
  FatigueRecorderFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

FatigueRecorderFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FatigueRecorderFirebaseUser> fatigueRecorderFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FatigueRecorderFirebaseUser>(
            (user) => currentUser = FatigueRecorderFirebaseUser(user));
