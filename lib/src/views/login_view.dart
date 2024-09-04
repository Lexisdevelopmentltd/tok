import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends StateMVC<LoginView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            child: Icon(Icons.arrow_back_ios),
          ),
          title: Center(child: Text('Login')),
        ),
        body: Column(
          children: [
            TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Color(0xFFC33E4F),
                tabs: [
                  Tab(
                    text: 'PHONE',
                    
                  ),
                  Tab(
                    text: 'EMAIL',
                  )
                ]),
            const Expanded(
                child: TabBarView(children: [
              PhoneNumbeLogin(),
              EmailLogin(),
            ]))
          ],
        ),
      ),
    );
  }
}

class PhoneNumbeLogin extends StatefulWidget {
  const PhoneNumbeLogin({super.key});

  @override
  State<PhoneNumbeLogin> createState() => _PhoneNumbeLoginState();
}

class _PhoneNumbeLoginState extends State<PhoneNumbeLogin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.all(12),
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: Color(0xFFC33E4F),
          ),
          child: Center(
            child: Text(
              'SEND CODE',
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}

class EmailLogin extends StatefulWidget {
  const EmailLogin({super.key});

  @override
  State<EmailLogin> createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  @override
  Widget build(BuildContext context) {
    return Text('Email-Login');
  }
}
