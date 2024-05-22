import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  _FormularioState createState() => _FormularioState();
}

final _nomeController = TextEditingController();
final _nicknameController =
    TextEditingController(); // Controller para o campo "nickname"
final _emailController = TextEditingController();
final _idadeController = TextEditingController();

class _FormularioState extends State<Formulario> {
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nomeController.dispose();
    _nicknameController.dispose(); // Dispose o controller "nickname"
    _emailController.dispose();
    _idadeController.dispose();
    super.dispose();
  }

  bool verificaForm() {
    return _formKey.currentState?.validate() ?? false;
  }

  void limpaForm() {
    _nomeController.clear();
    _nicknameController.clear(); // Limpa o campo "nickname"
    _emailController.clear();
    _idadeController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const Text("Formulário"),
                TextFormField(
                  controller: _nomeController,
                  decoration: const InputDecoration(
                    labelText: 'Nome',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira seu nome';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _nicknameController,
                  decoration: const InputDecoration(
                    labelText: 'Nickname',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira seu nickname';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira seu email';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _idadeController,
                  decoration: const InputDecoration(
                    labelText: 'Idade',
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira sua idade';
                    }
                    return null;
                  },
                ),
                const Spacer(),
                FilledButton(
                  onPressed: () {
                    if (verificaForm()) {
                      limpaForm();
                    }
                  },
                  child: const Text('Enviar'),
                ),
                const Spacer(),
                FilledButton(
                  onPressed: () {
                    Navigator.of(context).pop('Retornou');
                  },
                  child: const Text('Retornar a página inicial'),
                ),
                const Spacer(),
              ],
            ),
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
