import 'package:firebase_auth/firebase_auth.dart';
import 'package:sikeupaud/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'loginpage.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);
    return (firebaseUser == null) ? LoginPage() : MainPage(firebaseUser);
  }
}
