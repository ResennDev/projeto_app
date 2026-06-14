import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TarefaPage extends StatefulWidget {
  final DateTime data;

  const TarefaPage({super.key, required this.data});

  @override
  State<TarefaPage> createState() => _TarefaPageState();
}

class _TarefaPageState extends State<TarefaPage> {
  List<String> tarefas = [];

  final TextEditingController tarefaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tarefas')),
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
                      setState(() {
                        tarefas.add(tarefaController.text);
                      });

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
                      title: Text(tarefas[index]),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          setState(() {
                            tarefas.removeAt(index);
                          });
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
