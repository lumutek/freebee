import 'package:flutter/material.dart';
import 'appcard.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            AppCard(
              child: Text(
                "Sign In to Free-Bee",
                style: TextStyle(fontSize: 32.0),
                textAlign: TextAlign.center,
              ),
            ),
            AppCard(
              child: Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: "Email:"),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Password:"),
                    ),
                    Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 20.0),
                        child: FlatButton(
                          color: Colors.black,
                          textColor: Colors.white,
                          onPressed: () {},
                          child: Text("Login"),
                        )),
                    Container(
                      alignment: Alignment.centerRight,
                      child: FlatButton(
                        onPressed: () {},
                        child: Text("Forgot Password?"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Text("Don't have an account?"),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "Sign up",
                  style: TextStyle(fontSize: 24.0, color: Colors.red),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

/*Align(
alignment: Alignment.topRight,
child: Container(
child:Icon(
Icons.edit,
color: Colors.black,
),
),
) */
