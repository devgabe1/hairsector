// lib/main.dart
import 'package:flutter/material.dart';
import '../widgets/footer_widget.dart';
import '../pages/home_page.dart';
import '../pages/schedule_page.dart';
import '../pages/profile_page.dart';
import '../pages/settings_page.dart';
import '../pages/login_page.dart';

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

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  bool _isLoggedIn = false;

  // Lista de páginas para alternar no `IndexedStack`
  final List<Widget> _pages = [
    HomePage(),
    SchedulePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  @override
  void initState() {
    super.initState();
    _showLoginPage(); // Exibe a tela de login ao iniciar
  }

  void _showLoginPage() {
    if (!_isLoggedIn) {
      Future.delayed(Duration.zero, () {
        Navigator.push(
          context,
          MaterialPageRoute(
            fullscreenDialog: true,
            builder: (context) => LoginPage(
              onLoginSuccess: _onLoginSuccess,
            ),
          ),
        );
      });
    }
  }

  void _onLoginSuccess() {
    setState(() {
      _isLoggedIn = true;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hairsector'),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: FooterWidget(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
