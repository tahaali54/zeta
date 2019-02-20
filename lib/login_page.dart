import 'package:flutter/material.dart';
import 'package:zeta/home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Login',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: 32.0, left: 16.0, right: 16.0, bottom: 0.0),
              child: Container(
                height: 24,
                child: Image.asset("assets/logo.png"),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Email', contentPadding: EdgeInsets.all(8.0)),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        icon: Icon(Icons.visibility_off), onPressed: () {}),
                    labelText: 'Password',
                    contentPadding: EdgeInsets.all(8.0)),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: double.infinity),
                child: RaisedButton(
                  textColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Text('LOGIN'),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                'RESET PASSWORD',
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 32.0, right: 16.0, left: 16.0, top: 16.0),
              child: Text(
                'Don\'t have an account?',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            FlatButton(
              padding: EdgeInsets.only(bottom: 16.0),
              onPressed: () {},
              child: Text(
                'REGISTER',
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
