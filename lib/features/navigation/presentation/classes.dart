import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Classes extends StatefulWidget {
  const Classes({super.key});

  @override
  State<Classes> createState() => _ClassesState();
}

class _ClassesState extends State<Classes> {
  int _selectIndex = 0;
  List<Widget> pages = [
    Container(
      color: Colors.red.shade100,
      alignment: Alignment.center,
      child: Column(
        children: [
          const Center(
            child: Text("Personagens assassinos"),
          ),
          const Spacer(),
          Center(
            child: Image.network(
              "https://blog.jeux.com/wp-content/uploads/2017/08/assassins-league-of-legends.jpg",
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
            child: Text("Personagens tanque"),
          ),
          const Spacer(),
          Center(
            child: Image.network(
              "https://happysmurf.com/wp-content/uploads/2021/10/Tank-in-LoL.jpg",
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
            child: Text("Personagens de suporte"),
          ),
          const Spacer(),
          Center(
            child: Image.network(
              "https://blog.jeux.com/wp-content/uploads/2017/09/lol-supports.jpg",
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
        title: const Text('Classes'),
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
            label: 'Assassino',
          ),
          NavigationDestination(
            icon: Icon(Icons.shield),
            selectedIcon: Icon(Icons.shield_outlined),
            label: 'Tank',
          ),
          NavigationDestination(
            icon: Icon(Icons.remove_red_eye),
            selectedIcon: Icon(Icons.remove_red_eye_outlined),
            label: 'Suporte',
          ),
        ],
      ),
    );
  }
}
