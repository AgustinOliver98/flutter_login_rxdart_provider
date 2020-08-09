import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

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
          Container(
            height: mq.height * 0.3,
            child: Center(
              child: Text(
                'Rx Dart Login',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              child: ListView(
                shrinkWrap: true,
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
                  ListTile(
                    leading: Text('Remember me? '),
                    trailing: new Switch(value: true, onChanged: (val) {}),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Row(
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
            ),
          ),
        ]),
      ),
    );
  }
}
