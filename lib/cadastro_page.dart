import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  String nome = '';
  String registro = '';
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: const Text('Cadastro')),

      body: Column(
        children: [
          SizedBox(height: 15),

          Container(
/*             height: 180,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
                ),
              ), */
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                      Icons.person_add,
                      size: 80,
                      color: Colors.green,
                      ),

            SizedBox(height: 10),

            Text(
              'Novo Cadastro',
              style: TextStyle(
              color: Colors.green,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              ),
          ),
        ],
      ),
    ),
  ),

          Expanded(child: Padding(
            padding: const EdgeInsets.all(20),
          child: Column(
            children: [
            TextField(
              onChanged: (value) {
                nome = value;
              },
              decoration: const InputDecoration(labelText: 'Nome',
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              onChanged: (value) {
                registro = value;
              },
              decoration: const InputDecoration(
                labelText: 'Registro Acadêmico',
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              onChanged: (value) {
                email = value;
              },
              decoration: const InputDecoration(labelText: 'Email',
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              obscureText: true,
              onChanged: (value) {
                senha = value;
              },
              decoration: const InputDecoration(labelText: 'Senha',
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () async {
                if (nome.isEmpty || 
                email.isEmpty || 
                senha.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Preencha todos os campos',
                        ),
                      ),
                  );
                  return;
                }

                final prefs = 
                await SharedPreferences.getInstance();

                await prefs.setString('nome', nome);
                await prefs.setString('registro', registro);
                await prefs.setString('email', email);
                await prefs.setString('senha', senha);

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Cadastro realizado com sucesso!',
                    ),
                  ),
                );

                Navigator.pop(context);
              },

              style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.green,
                    elevation: 8,
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 35,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Text(
                    'Cadastrar',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),),],
          ),
        ),
      ),
    ],
  ),);
  }
}