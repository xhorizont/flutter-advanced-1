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
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.pink,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            width: 200,
            color: Colors.black,
            child: const Center(
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
              child: const Text('Klikni me'))
        ],
      ),
    );
  }
}
