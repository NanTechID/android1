import 'package:flutter/material.dart';

class MyLayoutPage extends StatelessWidget {
  const MyLayoutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pertemuan 4: Layout Dasar')),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.star, color: Colors.red),
                Icon(Icons.star, color: Colors.green),
                Icon(Icons.star, color: Colors.blue),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.amber)),
                  Expanded(child: Container(color: Colors.teal)),
                  Expanded(child: Container(color: Colors.pink)),
                ],
              ),
            ),
            SizedBox(height: 20),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.grey,
                child: Center(child: Text('Flexible Area')),
              ),
            ),
            SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => RowDemoPage()),
                  ),
                  child: Text('Row'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ColumnDemoPage()),
                  ),
                  child: Text('Column'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ExpandedDemoPage()),
                  ),
                  child: Text('Expanded'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => FlexibleDemoPage()),
                  ),
                  child: Text('Flexible'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ContainerDemoPage()),
                  ),
                  child: Text('Container'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => PaddingDemoPage()),
                  ),
                  child: Text('Padding'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RowDemoPage extends StatelessWidget {
  const RowDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo Row')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(width: 60, height: 60, color: Colors.red),
            Container(width: 60, height: 60, color: Colors.green),
            Container(width: 60, height: 60, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}

class ColumnDemoPage extends StatelessWidget {
  const ColumnDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo Column')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 120, height: 40, color: Colors.purple),
            SizedBox(height: 12),
            Container(width: 120, height: 40, color: Colors.orange),
            SizedBox(height: 12),
            Container(width: 120, height: 40, color: Colors.teal),
          ],
        ),
      ),
    );
  }
}

class ExpandedDemoPage extends StatelessWidget {
  const ExpandedDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo Expanded')),
      body: Column(
        children: [
          Expanded(flex: 1, child: Container(color: Colors.red)),
          Expanded(flex: 2, child: Container(color: Colors.green)),
          Expanded(flex: 1, child: Container(color: Colors.blue)),
        ],
      ),
    );
  }
}

class FlexibleDemoPage extends StatelessWidget {
  const FlexibleDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo Flexible')),
      body: Column(
        children: [
          Flexible(flex: 1, child: Container(color: Colors.amber, height: 100)),
          SizedBox(height: 8),
          Flexible(
            flex: 2,
            child: Container(color: Colors.indigo, height: 100),
          ),
          SizedBox(height: 8),
          Flexible(flex: 1, child: Container(color: Colors.cyan, height: 100)),
        ],
      ),
    );
  }
}

class ContainerDemoPage extends StatelessWidget {
  const ContainerDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo Container')),
      body: Center(
        child: Container(
          width: 220,
          height: 140,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 6)],
          ),
          child: Center(
            child: Text(
              'Ini contoh Container',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class PaddingDemoPage extends StatelessWidget {
  const PaddingDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo Padding')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Container(
            color: Colors.lightGreen,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text('Contoh padding di dalam container'),
            ),
          ),
        ),
      ),
    );
  }
}
