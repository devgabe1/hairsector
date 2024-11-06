import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: const Icon(Icons.dark_mode),
            title: const Text('Tema Escuro'),
            subtitle: const Text('Ativar ou desativar tema escuro'),
            trailing: Switch(
              value: true, // Valor inicial
              onChanged: (bool value) {
                // Implementação da lógica de mudança de tema
              },
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notificações'),
            subtitle: const Text('Ativar ou desativar notificações'),
            trailing: Switch(
              value: true, // Valor inicial
              onChanged: (bool value) {
                // Implementação da lógica de notificações
              },
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text('Privacidade'),
            subtitle: const Text('Configurações de privacidade da conta'),
            onTap: () {
              // Navegar para as configurações de privacidade
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('Idioma'),
            subtitle: const Text('Escolha o idioma do aplicativo'),
            onTap: () {
              // Abrir opções de seleção de idioma
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Conta'),
            subtitle: const Text('Configurações da conta'),
            onTap: () {
              // Navegar para a página de configurações de conta
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('Ajuda'),
            subtitle: const Text('Central de ajuda e suporte'),
            onTap: () {
              // Abrir central de ajuda
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Sobre'),
            subtitle: const Text('Informações sobre o aplicativo'),
            onTap: () {
              // Exibir informações do app
            },
          ),
        ],
      ),
    );
  }
}
