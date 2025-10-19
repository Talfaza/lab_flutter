import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TP1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.deepOrange.shade100,

        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontSize: 20,
            color: Colors.teal,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Colors.black87,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepOrange,
          titleTextStyle: TextStyle(
            color: Colors.teal,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final textStyle = Theme.of(context).textTheme.bodyLarge;

    return Scaffold(
      appBar: AppBar(
        title: const Text('TP1'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Accueil'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Paramètres'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('À propos'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Hello World !',
          style: textStyle?.copyWith(color: primaryColor),
        ),
      ),
    );
  }
}
