import 'package:flutter/material.dart';
import 'makanan.dart';

class DetailPage extends StatelessWidget {
  final Makanan makanan;

  const DetailPage({super.key, required this.makanan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(makanan.nama),
        backgroundColor: Colors.brown[300],
      ),
      body: SingleChildScrollView(
        // Agar halaman bisa di-scroll
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  // Membuat gambar lebih estetik dengan border radius
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    makanan.gambar,
                    width: double.infinity, // Buat gambar memenuhi lebar layar
                    height: 200,
                    fit: BoxFit.cover, // Gambar menyesuaikan ukuran kontainer
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                // Membuat nama makanan di tengah
                child: Text(
                  makanan.nama,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                makanan.deskripsi, // Teks deskripsi dari objek makanan
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              Text(
                'Harga: ${makanan.harga}', // Harga makanan
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 16),
              // Tambahkan widget lain seperti bahan racikan, info tambahan, dll. di sini jika diperlukan
            ],
          ),
        ),
      ),
    );
  }
}
