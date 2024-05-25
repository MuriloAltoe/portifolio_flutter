import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio_flutter/features/navigation/presentation/front.dart';
import 'package:portifolio_flutter/features/navigation/presentation/formulario.dart';
import 'package:portifolio_flutter/features/navigation/presentation/home_page.dart';
import 'package:portifolio_flutter/features/navigation/presentation/back.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        '/front': (context) => const Front(),
        '/back': (context) => const Back(),
      },
    );
  }
}
