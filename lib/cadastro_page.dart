import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  String nome = '';
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            TextField(
              onChanged: (value) {
                nome = value;
              },
              decoration: const InputDecoration(
                labelText: 'Nome',
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              onChanged: (value) {
                email = value;
              },
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              obscureText: true,
              onChanged: (value) {
                senha = value;
              },
              decoration: const InputDecoration(
                labelText: 'Senha',
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () async {

            final prefs = await SharedPreferences.getInstance();

                await prefs.setString('nome', nome);
                await prefs.setString('email', email);
                await prefs.setString('senha', senha);

            ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Cadastro realizado com sucesso!'),
            ),
    );

    Navigator.pop(context);

  },
  child: const Text('Cadastrar'),
)
  child: const Text('Cadastrar'),
)

if (nome.isEmpty || email.isEmpty || senha.isEmpty) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('Preencha todos os campos'),
    ),
  );
  return;
}
          ],
        ),
      ),
    );
  }
}