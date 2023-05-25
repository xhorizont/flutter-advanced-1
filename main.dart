import 'package:aladin/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const PrvaStran(),
    );
  }
}

class PrvaStran extends StatefulWidget {
  const PrvaStran({super.key});

  @override
  State<PrvaStran> createState() => _PrvaStranState();
}

class _PrvaStranState extends State<PrvaStran> {
  int trenutnaStran = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo'),
      ),
      body: const HomePage(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Klik');
          },
          child: const Icon(Icons.access_alarm)),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.abc_sharp), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.accessibility_sharp), label: 'Orodja'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            trenutnaStran = index;
          });
          trenutnaStran = index;
        },
      ),
    );
  }
}
