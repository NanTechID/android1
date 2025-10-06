import 'package:flutter/material.dart';
import 'secondpage.dart';
import 'thirdpage.dart';
import 'fourthpage.dart';
import 'fifthpage.dart';

void main() {
  runApp(MaterialApp(home: MyHomePage(), debugShowCheckedModeBanner: false));
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pertemuan 3'),
        actions: [IconButton(icon: Icon(Icons.info), onPressed: () {})],
      ),
      body: Center(
        child: SingleChildScrollView(
          // agar bisa discroll jika konten banyak
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello, INAN! Saya Gibaran Raka Buming Raka!',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 200,
                height: 250,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Gibran_Rakabuming_2024_official_portrait.jpg/500px-Gibran_Rakabuming_2024_official_portrait.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Icon(Icons.star, color: Colors.amber, size: 50),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  debugPrint('ElevatedButton ditekan');
                },
                child: Text('Tekan Saya'),
              ),
              SizedBox(height: 20),
              Divider(),
              // Tombol navigasi ke halaman lain
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyLayoutPage()),
                  );
                },
                child: Text('Ke Halaman Layout Dasar (Pertemuan 4)'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyAdvancedWidgetsPage(),
                    ),
                  );
                },
                child: Text('Ke Halaman Widget Lanjutan (Pertemuan 5)'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirstPage()),
                  );
                },
                child: Text('Ke Halaman Navigasi Data (Pertemuan 6)'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Menampilkan widget Stateful langsung
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Scaffold(
                        appBar: AppBar(
                          title: Text("Stateful Widget (Pertemuan 7)"),
                        ),
                        body: Center(child: MyStatefulWidget()),
                      ),
                    ),
                  );
                },
                child: Text('Ke Halaman Stateful Widget (Pertemuan 7)'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
