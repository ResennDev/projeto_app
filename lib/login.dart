import 'package:flutter/material.dart';

String email = '';
String senha = '';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (text) {
                email = text;
              },
              keyboardType: TextInputType.emailAddress,
              decoration:
                InputDecoration(border:OutlineInputBorder(),
                labelText: 'Email'
                ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (text) {
                senha = text;
              },
              obscureText: true,
              decoration:
                InputDecoration(border:OutlineInputBorder(),
                labelText: 'Senha'
                ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text('Entrar'),
              onPressed: () {
                  if (email == 'admin' && senha == 'admin') {
                      print('Login bem-sucedido!');
                  } else {
                      print('Email ou senha incorretos.');
                  }
              },
          ),
      ])

        )
    ));
  }
}