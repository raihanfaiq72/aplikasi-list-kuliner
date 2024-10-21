import 'package:flutter/material.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kuliner Nusantara'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.blue),
            onPressed: () {
              // Tambahkan tindakan untuk pencarian di sini
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.blue),
          onPressed: () {
            // Tambahkan tindakan untuk menu di sini
          },
        ),
      ),
      body: const Center(
        child: Text('Hello aplikasi makanan'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // Tambahkan tindakan untuk tombol tambah di sini
        },
      ),
    );
  }
}
