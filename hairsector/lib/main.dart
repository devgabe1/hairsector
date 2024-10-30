import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CronometroPage(),
    );
  }
}

class CronometroPage extends StatefulWidget {
  @override
  _CronometroPageState createState() => _CronometroPageState();
}

class _CronometroPageState extends State<CronometroPage> {
  int _segundos = 0;
  bool _executando = false;
  Timer? _timer;

  void _iniciarCronometro() {
    _executando = true;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _segundos++;
      });
    });
  }

  void _pausarCronometro() {
    _executando = false;
    _timer?.cancel();
  }

  void _reiniciarCronometro() {
    _pausarCronometro();
    setState(() {
      _segundos = 0;
    });
  }

  String get _tempoFormatado {
    final minutos = (_segundos ~/ 60).toString().padLeft(2, '0');
    final segundos = (_segundos % 60).toString().padLeft(2, '0');
    return '$minutos:$segundos';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyApp - Cronômetro'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _tempoFormatado,
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _executando ? null : _iniciarCronometro,
                  child: Text('Iniciar'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _executando ? _pausarCronometro : null,
                  child: Text('Pausar'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _reiniciarCronometro,
                  child: Text('Reiniciar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
