import 'package:flutter/material.dart';

class MyAdvancedWidgetsPage extends StatelessWidget {
  MyAdvancedWidgetsPage({super.key});
  final List<String> names = ["Andi", "Budi", "Citra", "Dewi", "Eko"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pertemuan 5: Widget Lanjutan')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text(names[index]),
                    subtitle: Text('Mahasiswa ke-${index + 1}'),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(margin: EdgeInsets.all(8), color: Colors.amber),
                    Positioned(
                      bottom: 8,
                      right: 8,
                      child: Icon(Icons.star, color: Colors.white),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
