import 'package:flutter/material.dart';

class MyAdvancedWidgetsPage extends StatelessWidget {
  MyAdvancedWidgetsPage({super.key});
  final List<String> names = ["Andi", "Budi", "Citra", "Dewi", "Eko"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pertemuan 5: Widget Lanjutan')),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          ListTile(
            leading: Icon(Icons.list),
            title: Text('ListView sederhana'),
            subtitle: Text('Contoh ListView statis'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => SimpleListViewPage(names: names),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.view_list),
            title: Text('ListView.builder'),
            subtitle: Text('ListView dinamis dengan builder'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => BuilderListViewPage(names: names),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.grid_view),
            title: Text('GridView.count'),
            subtitle: Text('Grid dengan jumlah kolom tetap'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => GridCountPage()),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.grid_on),
            title: Text('GridView.builder'),
            subtitle: Text('Grid yang dibangun secara dinamis'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => GridBuilderPage()),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.layers),
            title: Text('Stack (contoh)'),
            subtitle: Text('Contoh posisi/overlap menggunakan Stack'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => StackDemoPage()),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.credit_card),
            title: Text('Card (contoh)'),
            subtitle: Text('Contoh penggunaan Card'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => CardDemoPage()),
            ),
          ),
        ],
      ),
    );
  }
}

class SimpleListViewPage extends StatelessWidget {
  final List<String> names;
  const SimpleListViewPage({super.key, required this.names});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Sederhana')),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: names.map((n) => ListTile(title: Text(n))).toList(),
      ),
    );
  }
}

class BuilderListViewPage extends StatelessWidget {
  final List<String> names;
  const BuilderListViewPage({super.key, required this.names});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView.builder')),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text('${index + 1}')),
            title: Text(names[index]),
            subtitle: Text('Detail ${names[index]}'),
            onTap: () => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Anda memilih ${names[index]}')),
            ),
          );
        },
      ),
    );
  }
}

class GridCountPage extends StatelessWidget {
  const GridCountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(9, (i) => 'Item ${i + 1}');
    return Scaffold(
      appBar: AppBar(title: Text('GridView.count')),
      body: GridView.count(
        padding: EdgeInsets.all(8),
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: items
            .map(
              (t) => Container(
                decoration: BoxDecoration(
                  color: Theme.of(
                    context,
                  ).colorScheme.primary.withAlpha((0.12 * 255).round()),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(child: Text(t)),
              ),
            )
            .toList(),
      ),
    );
  }
}

class GridBuilderPage extends StatelessWidget {
  const GridBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(20, (i) => i + 1);
    return Scaffold(
      appBar: AppBar(title: Text('GridView.builder')),
      body: GridView.builder(
        padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Tile ${items[index]}'))),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(
                  context,
                ).colorScheme.primary.withAlpha((0.08 * 255).round()),
              ),
              child: Center(child: Text('Tile ${items[index]}')),
            ),
          );
        },
      ),
    );
  }
}

class StackDemoPage extends StatelessWidget {
  const StackDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack Demo')),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(width: 220, height: 220, color: Colors.blueAccent),
            Positioned(
              top: 16,
              left: 16,
              child: Container(width: 80, height: 80, color: Colors.orange),
            ),
            Positioned(
              bottom: 16,
              right: 16,
              child: Container(width: 60, height: 60, color: Colors.green),
            ),
            Positioned(
              child: Text(
                'Tumpukan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardDemoPage extends StatelessWidget {
  const CardDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Demo')),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: FlutterLogo(size: 36),
              title: Text('Judul Card'),
              subtitle: Text('Deskripsi singkat pada card'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            elevation: 2,
            margin: EdgeInsets.symmetric(vertical: 8),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Card dengan isi teks panjang. Bisa dipakai sebagai kartu informasi.',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
