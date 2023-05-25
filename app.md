main.dart

```
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

```

Homepage.dart

```
import 'package:aladin/drugastran.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return Tutorial();
          }));
        },
        child: Text('Besedilo'),
      ),
    );
  }
}

```

drugastran.dart

```
import 'package:flutter/material.dart';

class Tutorial extends StatefulWidget {
  const Tutorial({super.key});

  @override
  State<Tutorial> createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorial'),
      ),
      body: Column(
        children: [
          Image.asset('images/image1.jpg'),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.pink,
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            width: 200,
            color: Colors.black,
            child: Center(
              child: Text(
                'Besedilo',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                debugPrint('Dvignjni gumb');
              },
              child: Text('Klikni me'))
        ],
      ),
    );
  }
}

```
