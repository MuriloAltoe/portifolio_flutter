import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio_flutter/features/navigation/presentation/classes.dart';
import 'package:portifolio_flutter/features/navigation/presentation/formulario.dart';
import 'package:portifolio_flutter/features/navigation/presentation/home_page.dart';
import 'package:portifolio_flutter/features/navigation/presentation/itens.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        colorSchemeSeed: Colors.lightBlue,
        textTheme: GoogleFonts.righteousTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/formulario': (context) => const Formulario(),
        '/itens': (context) => const Itens(),
        '/classes': (context) => const Classes(),
      },
    );
  }
}
