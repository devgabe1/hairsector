import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agenda'),
        backgroundColor: const Color.fromARGB(255, 21, 21, 21),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título para compromissos futuros
            const Text(
              'Próximos Compromissos',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            
            // Lista de compromissos (exemplo com ListView)
            Expanded(
              child: ListView(
                children: [
                  _buildScheduleItem('Corte de Cabelo', 'Terça-feira, 10h - Barbeiro A', Icons.cut),
                  _buildScheduleItem('Aparar Barba', 'Sexta-feira, 14h - Barbeiro B', Icons.face),
                  _buildScheduleItem('Tintura de Cabelo', 'Sábado, 16h - Barbeiro C', Icons.color_lens),
                ],
              ),
            ),
            const Divider(),

            // Botão para adicionar novo agendamento
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  minimumSize: const Size(double.infinity, 50),
                ),
                icon: const Icon(Icons.add),
                label: const Text('Novo Agendamento'),
                onPressed: () {
                  // Lógica para adicionar um novo agendamento
                },
              ),
            ),
            
            const SizedBox(height: 20),

            // Configurações e lembretes
            const Text(
              'Configurações de Agenda',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Lembretes de Compromissos'),
              subtitle: const Text('Definir alertas para compromissos próximos'),
              trailing: Switch(
                value: true, // Defina o valor inicial conforme necessário
                onChanged: (bool value) {
                  // Lógica para ativar/desativar lembretes
                },
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.calendar_today),
              title: const Text('Sincronizar com Calendário'),
              subtitle: const Text('Adicionar compromissos ao calendário pessoal'),
              onTap: () {
                // Lógica para sincronizar compromissos
              },
            ),
          ],
        ),
      ),
    );
  }

  // Widget auxiliar para cada item de compromisso
  Widget _buildScheduleItem(String title, String subtitle, IconData icon) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10.0),
      child: ListTile(
        leading: Icon(icon, color: Colors.blueAccent, size: 30),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          // Lógica para abrir detalhes do compromisso
        },
      ),
    );
  }
}
