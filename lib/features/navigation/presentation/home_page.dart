import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frameworks para programação'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/formulario');
                },
                child: const Text('Cadastrar curricúlo'),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/front');
                },
                child: const Text('Front-end'),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/back');
                },
                child: const Text('Back-end'),
              ),
              const Spacer(),
              const Icon(Icons.lunch_dining),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
