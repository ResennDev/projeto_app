import 'package:flutter/material.dart';

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
          borderRadius: BorderRadius.circular(25),
        ),

        child: Padding(
          padding: EdgeInsets.all(20),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),

              Icon(Icons.login,
              size: 60,
              color: Colors.white,),

                SizedBox(height: 10),

              Text('Faça seu login', 
              style: TextStyle(fontSize: 24, 
              fontWeight: FontWeight.bold, 
              color: Colors.white),),

                SizedBox(height: 20),

              Align(
                alignment: Alignment.centerLeft,
                child: Text('Email', 
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  color: Colors.white),),
              ),

              TextField(
                decoration: InputDecoration(
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
                child: Text('Senha', 
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  color: Colors.white),),
              ),

              TextField(
                decoration: InputDecoration(
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
                width:double.infinity,

                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text('Entrar', 
                  style: TextStyle(fontSize: 18, 
                  fontWeight: FontWeight.bold),),
                ),
              ),

              SizedBox(height: 5),              

              Text(
              'Não é cadastrado?',
              style: TextStyle(
                color: Colors.white
              ),),

              SizedBox(height: 3),

              Text(
                'Cadastre-se',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),),


            ],
          ),
        ),
      ),
    ),);
  }
}