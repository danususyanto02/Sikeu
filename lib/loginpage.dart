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
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        color: Colors.lightBlueAccent,
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 150.0),
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
              height: 50,
            ),
            TextField(
              controller: emailController,
              decoration: new InputDecoration(
                  icon: Icon(
                    Icons.person,
                    size: 40,
                  ),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(15.0),
                    ),
                  ),
                  hintText: "Email",
                  contentPadding: EdgeInsets.all(13)),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: new InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    size: 40,
                  ),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(15.0),
                    ),
                  ),
                  hintText: "Password",
                  contentPadding: EdgeInsets.all(13)),
            ),
            RaisedButton(
                child: Text("Sign In"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.blue),
                ),
                color: Colors.lightBlueAccent,
                onPressed: () async {
                  await AuthServices.signIn(
                      emailController.text, passwordController.text);
                }),
            RaisedButton(
                child: Text("Sign Up"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.blue),
                ),
                color: Colors.lightBlueAccent,
                onPressed: () async {
                  await AuthServices.signUp(
                      emailController.text, passwordController.text);
                }),
          ],
        ),
      ),
    );
  }
}
