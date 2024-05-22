import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  _FormularioState createState() => _FormularioState();
}

final _nomeController = TextEditingController();
final _emailController = TextEditingController();
final _idadeController = TextEditingController();

class _FormularioState extends State<Formulario> {
  @override
  void dispose() {
    _nomeController.dispose();
    _emailController.dispose();
    _idadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Formulário"),
              TextField(
                controller: _nomeController,
                decoration: const InputDecoration(
                  labelText: 'Nome',
                ),
              ),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
              ),
              TextField(
                controller: _idadeController,
                decoration: const InputDecoration(
                  labelText: 'Idade',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              FilledButton(
                onPressed: () => {
                  if (verificaForm())
                    {
                      limpaForm(),
                    }
                },
                child: const Text('Enviar'),
              ),
              FilledButton(
                onPressed: () {
                  Navigator.of(context).pop('Retornou');
                },
                child: const Text('Retornar a página inicial'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void limpaForm() {
  _nomeController.text = '';
  _emailController.text = '';
  _idadeController.text = '';
}

bool verificaForm() {
  if (_nomeController.text == '' &&
      _emailController.text == '' &&
      _idadeController.text == '') {
    return false;
  } else {
    return true;
  }
}
