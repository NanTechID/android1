import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: StateExample()));
}

class StateExample extends StatefulWidget {
  const StateExample({super.key});

  @override
  StateExampleState createState() => StateExampleState();
}

class StateExampleState extends State<StateExample> {
  int counter = 0;

  void _increment() {
    setState(() {
      counter++;
    });
  }

  void _decrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pertemuan 7: State Management Dasar")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nilai Counter: $counter",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: _decrement, child: Text("-")),
                SizedBox(width: 20),
                ElevatedButton(onPressed: _increment, child: Text("+")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
