import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/schedule_page.dart';
import '../pages/profile_page.dart';
import '../pages/settings_page.dart';

class FooterWidget extends StatefulWidget {
  const FooterWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FooterWidgetState createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  // Variável para armazenar o índice do item selecionado
  int _selectedIndex = 0;

void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });

  // Navegação condicional com base no índice selecionado
  switch (_selectedIndex) {
    case 0:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()), // Tela Inicial
      );
      break;
    case 1:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SchedulePage()), // Tela de Agenda
      );
      break;
    case 2:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfilePage()), // Tela de Perfil
      );
      break;
    case 3:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SettingsPage()), // Tela de Configurações
      );
      break;
  }
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
