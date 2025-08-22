import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DevEnglish',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DevEnglish'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        children: const [
          Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.spellcheck),
              title: Text('Vocabulary'),
              subtitle: Text('Expand your word knowledge'),
            ),
          ),
          Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.rule),
              title: Text('Grammar'),
              subtitle: Text('Master English grammar rules'),
            ),
          ),
          Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.book),
              title: Text('Reading'),
              subtitle: Text('Improve your comprehension skills'),
            ),
          ),
          Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.headset),
              title: Text('Listening'),
              subtitle: Text('Enhance your listening skills'),
            ),
          ),
        ],
      ),
    );
  }
}
