import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  _FormularioState createState() => _FormularioState();
}

final _nomeController = TextEditingController();
final _emailController = TextEditingController();
final _dataNascimentoController = TextEditingController();
final _fileController = TextEditingController();

class _FormularioState extends State<Formulario> {
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nomeController.dispose();
    _emailController.dispose();
    _dataNascimentoController.dispose();
    _fileController.dispose();
    super.dispose();
  }

  bool verificaForm() {
    return _formKey.currentState?.validate() ?? false;
  }

  void limpaForm() {
    _nomeController.clear();
    _emailController.clear();
    _dataNascimentoController.clear();
    _fileController.clear();
  }

  Future<void> _selecionaDataNascimento(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        _dataNascimentoController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  Future<void> _selecionaArquivo() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        _fileController.text = result.files.single.name;
      });
    }
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
                  controller: _dataNascimentoController,
                  decoration: const InputDecoration(
                    labelText: 'Data de Nascimento',
                  ),
                  readOnly: true,
                  onTap: () => _selecionaDataNascimento(context),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira sua data de nascimento';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _fileController,
                  decoration: const InputDecoration(
                    labelText: 'Currículo',
                  ),
                  readOnly: true,
                  onTap: _selecionaArquivo,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, selecione um arquivo';
                    }
                    return null;
                  },
                ),
                const Spacer(),
                FilledButton(
                  onPressed: () {
                    // A funcionalidade do botão Enviar foi desativada.
                    // if (verificaForm()) {
                    //   limpaForm();
                    // }
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
