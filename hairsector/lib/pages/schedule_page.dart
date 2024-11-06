import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agenda'),
        backgroundColor: Colors.black,
      ),
      body: const Center(
        child: Text(
          'Página de Agenda',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
