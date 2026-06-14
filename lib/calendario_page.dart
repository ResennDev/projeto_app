import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:projeto_app/tarefa_page.dart';

class CalendarioPage extends StatefulWidget {
  const CalendarioPage({super.key});

  @override
  State<CalendarioPage> createState() => _CalendarioPageState();
}

class _CalendarioPageState extends State<CalendarioPage> {
  DateTime hoje = DateTime.now();
  DateTime? diaSelecionado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: const Text('Calendario')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: TableCalendar(
          focusedDay: hoje,

          calendarFormat: CalendarFormat.month,

          availableCalendarFormats: const {CalendarFormat.month: 'Mês'},

          firstDay: DateTime.utc(1900, 1, 1),
          lastDay: DateTime.utc(2055, 1, 1),

          selectedDayPredicate: (day) {
            return isSameDay(diaSelecionado, day);
          },

          onDaySelected: (selectadeDay, focusedDay) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TarefaPage(data: selectadeDay),
              ),
            );
            /* setState(() {
              diaSelecionado = selectadeDay;
              hoje = focusedDay;
            }); */
          },
        ),
      ),
    );
  }
}
