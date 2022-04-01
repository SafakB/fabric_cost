import 'package:fabric_cost/pages/login.dart';
import 'package:fabric_cost/pages/login_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Background(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 120,),
                  Header(),
                  SizedBox(height: 80,),
                  LoginForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Card(
        child: Text("ok"),
      )
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 80,
            child: Image(image: AssetImage('assets/images/logo.png'),)
        ),
        SizedBox(height: 20,),
        Text("AYCAN TEKSTİL",style: TextStyle(color: Color(0xFF0068c7),fontSize: 28,fontWeight: FontWeight.bold),),
      ],
    );
  }
}


