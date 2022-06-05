import 'package:flutter/material.dart';
import 'package:qr_reader/src/pages/home_page.dart';
import 'package:qr_reader/src/pages/mapa_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR Reader',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext ) => HomePage(),
        'mapa': (Buildcontext ) => MapaPage(),
      },
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.teal,
        )
      ),
    );
  }
}