import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Pertama")),
      body: Center(
        child: ElevatedButton(
          child: Text("Ke Halaman Kedua"),
          onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondPage(data: "Halo dari FirstPage"),
              ),
            );
            debugPrint("Data dari SecondPage: $result");
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String data;
  const SecondPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Kedua")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Data diterima: $data"),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Kembali dengan data"),
              onPressed: () {
                Navigator.pop(context, "Balasan dari SecondPage");
              },
            ),
          ],
        ),
      ),
    );
  }
}
