import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'list_item.dart';
import 'makanan.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Makanan> makananList = [
      Makanan(
        nama: 'Bubur Ayam',
        deskripsi: 'Nasi lembek dicampur dengan bumbu mantab',
        harga: 'Rp 10.000',
        gambar: 'assets/bubur.jpg',
      ),
      Makanan(
        nama: 'Soto',
        deskripsi: 'Makanan berkuah',
        harga: 'Rp 6.000',
        gambar: 'assets/soto.jpg',
      ),
      Makanan(
        nama: 'Pecel',
        deskripsi: 'Sayuran dengan bumbu kacang',
        harga: 'Rp 8.000',
        gambar: 'assets/pecel.jpg',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kuliner Nusantara'),
        centerTitle: true,
        backgroundColor: Colors.brown[300],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: makananList.length,
        itemBuilder: (context, index) {
          return ListItem(makanan: makananList[index]);
        },
      ),
    );
  }
}
