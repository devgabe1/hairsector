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
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Informações básicas do usuário
          Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile_picture.png'), // Imagem de exemplo
                ),
                const SizedBox(height: 10),
                const Text(
                  'Nome do Usuário',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'email@exemplo.com',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          // Opções de edição de perfil
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text('Editar Perfil'),
            subtitle: const Text('Atualizar informações pessoais'),
            onTap: () {
              // Navegar para a tela de edição de perfil
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text('Alterar Senha'),
            subtitle: const Text('Mudar a senha da conta'),
            onTap: () {
              // Navegar para a tela de alteração de senha
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Preferências de Notificação'),
            subtitle: const Text('Gerenciar notificações de atividades'),
            onTap: () {
              // Abrir configurações de notificações
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('Histórico de Atividades'),
            subtitle: const Text('Ver últimas atividades realizadas'),
            onTap: () {
              // Navegar para a página de histórico de atividades
            },
          ),
          const Divider(),
          // Logout
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Sair'),
            subtitle: const Text('Encerrar sessão no aplicativo'),
            onTap: () {
              // Implementar a lógica de logout
            },
          ),
        ],
      ),
    );
  }
}
