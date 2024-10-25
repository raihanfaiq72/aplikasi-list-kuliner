import 'package:flutter/material.dart';
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
        gambarDetail: [
          'assets/bubur1.jpg',
          'assets/bubur2.jpg',
          'assets/bubur3.jpg',
        ],
        kalori: 250,
        waktuBuka: '07:00 - 14:00',
        bahan: [
          'assets/bahan/bawang.png',
          'assets/bahan/ayam.png',
          'assets/bahan/kacang.png',
        ],
      ),
      Makanan(
        nama: 'Soto',
        deskripsi: 'Makanan berkuah',
        harga: 'Rp 6.000',
        gambar: 'assets/soto.jpg',
        gambarDetail: [
          'assets/soto1.jpg',
          'assets/soto2.jpg',
          'assets/soto3.jpg',
        ],
        kalori: 300,
        waktuBuka: '08:00 - 16:00',
        bahan: [
          'assets/bahan/ayam.png',
          'assets/bahan/santan.png',
          'assets/bahan/daunBawang.png',
        ],
      ),
      Makanan(
        nama: 'Pecel',
        deskripsi: 'Sayuran dengan bumbu kacang',
        harga: 'Rp 8.000',
        gambar: 'assets/pecel.jpg',
        gambarDetail: [
          'assets/pecel1.jpg',
          'assets/pecel2.jpg',
          'assets/pecel3.jpg',
        ],
        kalori: 200,
        waktuBuka: '09:00 - 15:00',
        bahan: [
          'assets/bahan/daging.png',
          'assets/bahan/kacang.png',
          'assets/bahan/kecap.png',
        ],
      ),
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 236, 215),
      appBar: AppBar(
        title: const Text(
          'Kuliner Nusantara',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown[500],
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.list_alt_rounded,
                  size: 36,
                  color: Colors.brown[500],
                ),
                const SizedBox(width: 8),
                Text(
                  "List Kuliner",
                  style: TextStyle(
                    color: Colors.brown[500],
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Expanded(
            // Wrap ListView with Expanded
            child: ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: makananList.length,
              itemBuilder: (context, index) {
                return ListItem(makanan: makananList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
