import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
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
                child: const Text('Ir para o formulário'),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/itens');
                },
                child: const Text('Itens'),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/classes');
                },
                child: const Text('Classes'),
              ),
              const Spacer(),
              const Icon(Icons.lunch_dining)
            ],
          ),
        ),
      ),
    );
  }
}
