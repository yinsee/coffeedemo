import 'package:flutter/material.dart';

import 'QuickOrderScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: _body(),
    );
  }

  _body() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset('assets/loginscreen.jpg'),
        Text(
          'LET' 'S START WITH COFFEE!',
          textAlign: TextAlign.center,
          // style: Theme.of(context).textTheme.title,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlineButton(
              child: Text('SIGN UP'),
              onPressed: () {},
            ),
            Container(width: 5),
            OutlineButton(
              child: Text('LOGIN'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => QuickOrderScreen()));
              },
            ),
          ],
        ),
      ],
    );
  }
}
