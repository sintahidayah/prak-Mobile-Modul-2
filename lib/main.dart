import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App', // sesuai yang ada di screenshot
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const MyHomePage(title: 'My First App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), // My First App
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                KotakWarna(warna: Colors.blue, teks: "Kotak 1"),
                SizedBox(width: 10),
                KotakWarna(warna: Colors.green, teks: "Kotak 2"),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                KotakWarna(warna: Colors.orange, teks: "Kotak 3"),
                SizedBox(width: 10),
                KotakWarna(warna: Colors.purple, teks: "Kotak 4"),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

// Widget KotakBiruJempol
class KotakBiruJempol extends StatelessWidget {
  const KotakBiruJempol({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Icon(Icons.thumb_up, color: Colors.yellow, size: 40),
    );
  }
}

class KotakWarna extends StatelessWidget {
  final Color warna;
  final String teks;

  const KotakWarna({super.key, required this.warna, required this.teks});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: warna,
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.favorite, color: Colors.red, size: 40),
        ),
        const SizedBox(height: 5),
        Text(teks),
      ],
    );
  }
}
