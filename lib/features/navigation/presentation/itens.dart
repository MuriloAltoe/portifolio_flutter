import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Itens extends StatefulWidget {
  const Itens({super.key});

  @override
  State<Itens> createState() => _ItensState();
}

class _ItensState extends State<Itens> {
  int _selectIndex = 0;
  List<Widget> pages = [
    Container(
      color: Colors.red.shade100,
      alignment: Alignment.center,
      child: Column(
        children: [
          const Center(
            child: Text("Itens de dano físico"),
          ),
          const Spacer(),
          Center(
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtE9aBhql2vO8oheAL28FL3muxOuBULapTQpFjyKZw8w&s",
              fit: BoxFit.cover,
              height: 500.00,
            ),
          ),
          const Spacer(),
        ],
      ),
    ),
    Container(
      color: Colors.green.shade100,
      alignment: Alignment.center,
      child: Column(
        children: [
          const Center(
            child: Text("Itens de dano físico"),
          ),
          const Spacer(),
          Center(
            child: Image.network(
              "https://static1-br.millenium.gg/articles/7/44/47/@/87481-sri-thumbnail-textless-article_m-2.jpg",
              fit: BoxFit.cover,
              height: 500.00,
            ),
          ),
          const Spacer(),
        ],
      ),
    ),
    Container(
      color: Colors.deepPurple.shade100,
      alignment: Alignment.center,
      child: Column(
        children: [
          const Center(
            child: Text("Itens de suporte"),
          ),
          const Spacer(),
          Center(
            child: Image.network(
              "https://noticias.maisesports.com.br/wp-content/uploads/2024/01/como-funcionam-itens-de-suporte-lol-2024.jpg",
              fit: BoxFit.cover,
              height: 500.00,
            ),
          ),
          const Spacer(),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigation'),
      ),
      body: Center(
        child: pages[_selectIndex],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            _selectIndex = index;
          });
        },
        selectedIndex: _selectIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.auto_fix_high),
            selectedIcon: Icon(Icons.auto_fix_high_outlined),
            label: 'Dano mágico',
          ),
          NavigationDestination(
            icon: Icon(Icons.restaurant),
            selectedIcon: Icon(Icons.restaurant_outlined),
            label: 'Dano físico',
          ),
          NavigationDestination(
            icon: Icon(Icons.shield_outlined),
            selectedIcon: Icon(Icons.shield),
            label: 'Suporte',
          ),
        ],
      ),
    );
  }
}
