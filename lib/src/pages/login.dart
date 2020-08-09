import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordControlelr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0XFFF9EBE0),
      resizeToAvoidBottomPadding: false,
      body: Container(
        height: mq.height,
        child: Column(children: <Widget>[
          _headerLogin(mq),
          _form(),
          SizedBox(
            height: 10,
          ),
          _optionsLogin()
        ]),
      ),
    );
  }

  Container _optionsLogin() {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Remember me? '),
              Switch(value: true, onChanged: (val) {}),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Row(
            children: <Widget>[
              Text('Dont have an account? '),
              SizedBox(
                width: 10,
              ),
              Text('Please register here',
                  style: TextStyle(color: Color(0xFFDE8F53)))
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }

  Padding _form() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Username'),
              subtitle: TextFormField(
                decoration: new InputDecoration(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text('Password'),
              subtitle: TextFormField(
                decoration: new InputDecoration(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              color: Color(0xFFDE8F53),
              child: Text(
                'Log in',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _headerLogin(Size mq) {
    return Container(
      alignment: Alignment.center,
      height: mq.height * 0.3,
      child: Center(
        child: Text(
          'Rx Dart Login',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
