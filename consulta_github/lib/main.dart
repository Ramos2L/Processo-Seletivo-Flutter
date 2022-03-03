import 'package:consulta_github/home/home_search_people.dart';
import 'package:consulta_github/home/home_search_repository.dart';
import 'package:consulta_github/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter People/Repository gitHub search',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      // O initialRoute é a primeira rota que é aberta no app
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/one': (context) => HomeSearchPeople(),
        '/two': (context) => HomeSearchRepository(),        
      },
    );
  }
}


