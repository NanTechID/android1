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
          ],
        ),
      ),
    );
  }
}
