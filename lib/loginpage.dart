import 'package:sikeupaud/authservices.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        color: Colors.lightBlueAccent,
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 70.0),
              height: 100,
              width: 100,
              decoration:
                  BoxDecoration(color: Colors.black26, shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  Icons.person,
                  size: 80,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Sikeu Paud",
              style: TextStyle(fontSize: 25, color: Colors.black54),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: new InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(15.0),
                    ),
                  ),
                  filled: true,
                  hintText: "Email",
                  fillColor: Colors.white70),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: new InputDecoration(
                  icon: new Icon(Icons.search),
                  labelText: "Describe Your Issue...",
                  enabledBorder: const OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  filled: true,
                  hintText: "Password",
                  fillColor: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
