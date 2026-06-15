import 'package:flutter/material.dart';
import 'package:projeto_app/home_page.dart';
import 'package:projeto_app/cadastro_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      body: Container(
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
                onChanged: (texto) {
                  email = texto;
                },

                style: TextStyle(color: Colors.white70),

                decoration: InputDecoration(
                  hintText: 'Digite seu email',
                  hintStyle: TextStyle(color: Colors.white70),

                  filled: true,
                  fillColor: const Color.fromARGB(255, 28, 77, 29),

                  prefixIcon: Icon(Icons.email, color: Colors.white70),

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
                onChanged: (texto) {
                  senha = texto;
                },

                obscureText: true,

                style: TextStyle(color: Colors.white70),
                decoration: InputDecoration(
                  hintText: 'Digite sua senha',
                  hintStyle: TextStyle(color: Colors.white70),

                  filled: true,
                  fillColor: const Color.fromARGB(255, 28, 77, 29),

                  prefixIcon: Icon(Icons.lock, color: Colors.white70),

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
                  onPressed: () async {
                    final prefs = await SharedPreferences.getInstance();

                    String? senhaSalva = prefs.getString('${email}_senha');

                    if (email.isEmpty || senha.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                        content: Text(
                        'Preencha Email e Senha'
                      ),
                    ),
                  );
                      return;
                }

                    if (senha == senhaSalva) {
                      await prefs.setString(
                        'usuario_logado',
                        email,
                      );
                      
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Email ou senha incorretos"),
                        ),
                      );
                    }
                  },

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
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              SizedBox(height: 5),

              Text('Não é cadastrado?', style: TextStyle(color: Colors.white)),

              SizedBox(height: 3),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CadastroPage()),
                  );
                },

                child: const Text('Cadastre-se', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
