import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Front extends StatefulWidget {
  const Front({super.key});

  @override
  State<Front> createState() => _FrontState();
}

class _FrontState extends State<Front> {
  int _selectIndex = 0;
  List<Widget> pages = [
    Container(
      color: Colors.red.shade100,
      alignment: Alignment.center,
      child: Column(
        children: [
          const Center(
            child: Text(
              "Flutter",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(),
          Expanded(
            child: Center(
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/2560px-Google-flutter-logo.svg.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Flutter é um framework de código aberto do Google para a criação de aplicativos nativos compilados para mobile, web e desktop a partir de uma única base de código. "
              "Ele utiliza a linguagem de programação Dart.",
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
              "Vue",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(),
          Expanded(
            child: Center(
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Vue.js_Logo_2.svg/1200px-Vue.js_Logo_2.svg.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Vue.js é um framework JavaScript progressivo para a construção de interfaces de usuário. "
              "Ele é projetado para ser incrementável, podendo ser adotado gradualmente dependendo das necessidades do projeto.",
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
              "Angular",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(),
          Expanded(
            child: Center(
              child: Image.network(
                "https://www.softplan.com.br/wp-content/uploads/2024/01/image-10-1024x320.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Angular é uma plataforma e framework para construção de aplicações web dinâmicas de página única (SPA). "
              "Desenvolvido pelo Google, utiliza TypeScript como sua principal linguagem de programação.",
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
        title: const Text('Front'),
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
            icon: Icon(Icons.restaurant),
            selectedIcon: Icon(Icons.restaurant_outlined),
            label: 'Flutter',
          ),
          NavigationDestination(
            icon: Icon(Icons.shield),
            selectedIcon: Icon(Icons.shield_outlined),
            label: 'Vue',
          ),
          NavigationDestination(
            icon: Icon(Icons.remove_red_eye),
            selectedIcon: Icon(Icons.remove_red_eye_outlined),
            label: 'Angular',
          ),
        ],
      ),
    );
  }
}
