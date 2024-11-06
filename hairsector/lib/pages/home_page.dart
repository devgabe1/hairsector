import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Início"),
        backgroundColor: Colors.black, // Personalize conforme necessário
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickSearchButton(),
            const SizedBox(height: 20),
            ServiceCategories(),
            const SizedBox(height: 20),
            SuggestionsAndFavorites(),
            const SizedBox(height: 20),
            PersonalSchedule(),
            const SizedBox(height: 20),
            OffersAndPromotions(),
          ],
        ),
      ),
      
    );
  }
}

class QuickSearchButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Buscar barbeiros, serviços ou locais próximos",
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onSubmitted: (query) {
        // Adicione a lógica de busca rápida aqui
      },
    );
  }
}

class ServiceCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildCategoryItem(Icons.cut, "Corte de Cabelo"),
        _buildCategoryItem(Icons.face, "Barba"),
        _buildCategoryItem(Icons.shopping_bag, "Pacotes"),
      ],
    );
  }

  Widget _buildCategoryItem(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 40, color: Colors.blueAccent),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}

class SuggestionsAndFavorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Sugestões e Favoritos",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Container(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildSuggestionCard("Barbeiro A"),
              _buildSuggestionCard("Salão B"),
              _buildSuggestionCard("Serviço C"),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSuggestionCard(String name) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 83, 83, 83),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.person, size: 40, color: Colors.blueAccent),
          const SizedBox(height: 10),
          Text(name),
        ],
      ),
    );
  }
}

class PersonalSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Agenda Pessoal",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        ListTile(
          leading: const Icon(Icons.calendar_today, color: Colors.blueAccent),
          title: const Text("Próximo agendamento"),
          subtitle: const Text("Terça-feira, 10h - Barbeiro A"),
          onTap: () {
            // Lógica para abrir detalhes do agendamento
          },
        ),
      ],
    );
  }
}

class OffersAndPromotions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Ofertas e Promoções",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 75, 75, 75),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: const Text(
              "10% de desconto em corte de cabelo",
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 255, 234, 113)),
            ),
          ),
        ),
      ],
    );
  }
}
