import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Relógio e Calendário',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PaginaPrincipal(),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Relógio e Calendário'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              JanelaCalendario(),
              SizedBox(height: 32),
              RelogioJanela(),
            ],
          ),
        ),
      ),
    );
  }
}

class RelogioJanela extends StatefulWidget {
  const RelogioJanela({super.key});

  @override
  State<RelogioJanela> createState() => _RelogioJanelaState();
}

class _RelogioJanelaState extends State<RelogioJanela> {
  String _hora = '';
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _hora = _horaAtual();

    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        setState(() {
          _hora = _horaAtual();
        });
      },
    );
  }

  String _horaAtual() {
    final t = DateTime.now();

    String d2(int n) => n.toString().padLeft(2, '0');

    return '${d2(t.hour)}:${d2(t.minute)}:${d2(t.second)}';
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            blurRadius: 12,
            color: Colors.black26,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Relógio',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 4),
          Text(
            _hora,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class JanelaCalendario extends StatefulWidget {
  const JanelaCalendario({super.key});

  @override
  State<JanelaCalendario> createState() => _JanelaCalendarioState();
}

class _JanelaCalendarioState extends State<JanelaCalendario> {
  DateTime _dataSelecionada = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            blurRadius: 12,
            color: Colors.black26,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              'Data selecionada: '
              '${_dataSelecionada.day.toString().padLeft(2, '0')}/'
              '${_dataSelecionada.month.toString().padLeft(2, '0')}/'
              '${_dataSelecionada.year}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CalendarDatePicker(
            initialDate: _dataSelecionada,
            firstDate: DateTime(2020),
            lastDate: DateTime(2100),
            onDateChanged: (novaData) {
              setState(() {
                _dataSelecionada = novaData;
              });
            },
          ),
        ],
      ),
    );
  }
}