import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Back extends StatefulWidget {
  const Back({super.key});

  @override
  State<Back> createState() => _BackState();
}

class _BackState extends State<Back> {
  int _selectIndex = 0;
  List<Widget> pages = [
    Container(
      color: Colors.red.shade100,
      alignment: Alignment.center,
      child: Column(
        children: [
          const Center(
            child: Text(
              "Spring Boot",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(),
          Expanded(
            child: Center(
              child: Image.network(
                "https://miro.medium.com/v2/resize:fit:600/1*ljHUhFnaBissdRBe7DIo6g.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Spring Boot é um framework da Spring que facilita o processo de criação de aplicações Java. "
              "Ele simplifica a configuração inicial e o desenvolvimento de novos projetos baseados na plataforma Spring.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
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
            child: Text(
              "Flask",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(),
          Expanded(
            child: Center(
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Flask_logo.svg/1200px-Flask_logo.svg.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Flask é um microframework para a linguagem de programação Python, baseado em Werkzeug e Jinja2. "
              "É conhecido pela simplicidade e facilidade de uso, ideal para projetos pequenos e médios.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
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
            child: Text(
              "FastAPI",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(),
          Expanded(
            child: Center(
              child: Image.network(
                "https://mabittar.github.io/assets/img/fastapi.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "FastAPI é um framework web moderno e rápido para construir APIs com Python 3.7+ baseado em standard Python type hints. "
              "Ele é projetado para alta performance e é ideal para aplicações assíncronas.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
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
        title: const Text('Back'),
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
            label: 'Spring Boot',
          ),
          NavigationDestination(
            icon: Icon(Icons.restaurant),
            selectedIcon: Icon(Icons.restaurant_outlined),
            label: 'Flask',
          ),
          NavigationDestination(
            icon: Icon(Icons.shield_outlined),
            selectedIcon: Icon(Icons.shield),
            label: 'FastAPI',
          ),
        ],
      ),
    );
  }
}
