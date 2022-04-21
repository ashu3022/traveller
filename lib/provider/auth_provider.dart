import 'package:flutter/cupertino.dart';

import 'package:firebase_auth/firebase_auth.dart';

class AuthProvider with ChangeNotifier {
  final user = FirebaseAuth.instance.currentUser;
  String uid = "";

  String get setToken {
    uid = user!.uid;
    return uid;
  }
}
