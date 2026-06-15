import 'package:flutter/material.dart';

class ConfiguracoesPage extends StatelessWidget {
  const ConfiguracoesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Icon(
              Icons.settings,
              size: 100,
              color: Colors.green,
            ),

            const SizedBox(height: 20),

            const Text(
              'Aplicativo de Gerenciamento de Tarefas',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const ListTile(
              leading: Icon(Icons.info),
              title: Text('Versão'),
              subtitle: Text('1.0'),
            ),

            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Desenvolvedor'),
              subtitle: Text('Guilherme Henrique'),
            ),

            const ListTile(
              leading: Icon(Icons.code),
              title: Text('Tecnologias'),
              subtitle: Text('Flutter • Dart • SharedPreferences'),
            ),

            const SizedBox(height: 20),

            const Text(
              'Projeto acadêmico desenvolvido para gerenciamento de tarefas diárias.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}