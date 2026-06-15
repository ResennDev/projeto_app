import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class TarefaPage extends StatefulWidget {
  final DateTime data;

  const TarefaPage({super.key, required this.data});

  @override
  State<TarefaPage> createState() => _TarefaPageState();
}

class _TarefaPageState extends State<TarefaPage> {
  List<Map<String, dynamic>> tarefas = [];

  String emailLogado = ' ';

  final TextEditingController tarefaController = TextEditingController();

  String get chaveData =>
      '${emailLogado}_${widget.data.day}_${widget.data.month}_${widget.data.year}';

  @override
  void initState() {
    super.initState();
    carregarTarefas();
  }

  Future<void> carregarTarefas() async {
    final prefs = await SharedPreferences.getInstance();

    emailLogado = prefs.getString('usuario_logado') ?? ' ';

    final tarefasJson = prefs.getString(chaveData);

    if (tarefasJson != null) {
      setState(() {
        tarefas = List<Map<String, dynamic>>.from(jsonDecode(tarefasJson));
      });
    }
  }

  Future<void> salvarTarefas() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(chaveData, jsonEncode(tarefas));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: const Text('Tarefas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              '${widget.data.day}/${widget.data.month}/${widget.data.year}',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: tarefaController,
                    decoration: const InputDecoration(
                      hintText: 'Digite uma tarefa',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                const SizedBox(width: 20),

                ElevatedButton(
                  onPressed: () {
                    if (tarefaController.text.isNotEmpty) {
                      final texto = tarefaController.text.trim();

                      setState(() {
                        tarefas.add({
                          'titulo': texto[0].toUpperCase() + texto.substring(1),
                          'concluída': false,
                        });
                      });

                      salvarTarefas();

                      tarefaController.clear();
                    }
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: tarefas.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Checkbox(
                        value: tarefas[index]['concluída'] ?? false,
                        onChanged: (valor) {
                          setState(() {
                            tarefas[index]['concluída'] = valor ?? false;
                          });

                          salvarTarefas();
                        },
                      ),
                      title: Text(
                        tarefas[index]['titulo'],
                        style: TextStyle(
                          decoration: (tarefas[index]['concluída'] ?? false)
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          setState(() {
                            tarefas.removeAt(index);
                          });

                          salvarTarefas();
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
