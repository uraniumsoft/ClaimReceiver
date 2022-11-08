import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ClaimReceiverFirebaseUser {
  ClaimReceiverFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ClaimReceiverFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ClaimReceiverFirebaseUser> claimReceiverFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ClaimReceiverFirebaseUser>(
      (user) {
        currentUser = ClaimReceiverFirebaseUser(user);
        return currentUser!;
      },
    );
