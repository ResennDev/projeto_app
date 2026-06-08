import 'package:flutter/material.dart';
import 'package:projeto_app/theme.dart';

String email = '';
String senha = '';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 450,

          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
          ),

          child: Padding(
            padding: EdgeInsets.all(20),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10),

                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(200, 28, 77, 29),
                    shape: BoxShape.circle,
                  ),

                  child: Icon(Icons.login, size: 55, color: Colors.green),
                ),

                SizedBox(height: 10),

                Text(
                  'Faça seu login',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 20),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),

                TextField(
                  style: TextStyle(color: Colors.white70),
                  decoration: InputDecoration(
                    hintText: 'Digite seu email',
                    hintStyle: TextStyle(color: Colors.white70),

                    filled: true,
                    fillColor: const Color.fromARGB(255, 28, 77, 29),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                SizedBox(height: 5),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Senha',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),

                TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.white70),
                  decoration: InputDecoration(
                    hintText: 'Digite sua senha',
                    hintStyle: TextStyle(color: Colors.white70),

                    filled: true,
                    fillColor: const Color.fromARGB(255, 28, 77, 29),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,

                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.green,
                      elevation: 8,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 5),

                Text(
                  'Não é cadastrado?',
                  style: TextStyle(color: Colors.white),
                ),

                SizedBox(height: 3),

                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Cadastre-se',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
