import 'package:flutter/material.dart';
import '../widgets/footer_widget.dart';
import '../pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const HomeScreen(),
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
      body: HomePage(), // Use HomePage aqui como o corpo
      bottomNavigationBar: const FooterWidget(), // Rodapé global
    );
  }
}
