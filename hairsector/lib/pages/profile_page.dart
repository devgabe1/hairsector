import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        backgroundColor: Colors.black,
      ),
      body: const Center(
        child: Text(
          'Página de Perfil',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
