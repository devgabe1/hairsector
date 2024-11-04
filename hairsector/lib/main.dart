import 'package:flutter/material.dart';
import '../widgets/footer_widget.dart';
import '../pages/home_page.dart'; // Certifique-se de ajustar o caminho se estiver em outra pasta


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hairsector'),
      ),
      body: const Center(
        child: Text(
          'Bem-vindo!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: const FooterWidget(), // Exibe o rodapé na tela inicial
    );
  }
}
