import 'package:flutter/material.dart';

class FooterWidget extends StatefulWidget {
  @override
  _FooterWidgetState createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  // Variável para armazenar o índice do item selecionado
  int _selectedIndex = 0;

  // Método para lidar com a mudança de índice
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Atualiza o índice selecionado
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black, // Fundo escuro
      unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
      selectedItemColor: Colors.blueAccent,
      currentIndex: _selectedIndex, // Define o índice atual
      type: BottomNavigationBarType.fixed,
      onTap: _onItemTapped, // Adiciona o método para lidar com toques
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Início',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.schedule),
          label: 'Agenda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Configurações',
        ),
      ],
    );
  }
}
