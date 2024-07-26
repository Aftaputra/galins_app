import 'package:flutter/material.dart';

class dbCard extends StatelessWidget {
  const dbCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 64.0),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(238, 244, 254, 1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // Pembacaan terbaru
          const Text(
            'Pembacaan terbaru : Fe3+',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10),
          // A = 2.321
          const Text(
            'A = 2.321',
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          // Jum, 26 Jul 2024, 12.00
          const Text(
            'Jum, 26 Jul 2024, 12.00',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),
          // Kirim ke Database button
          ElevatedButton(
            onPressed: () {
              // Aksi ketika tombol ditekan
              print('Kirim ke Database');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(1, 82, 132, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(99),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            child: const Text(
              'Kirim ke Database',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}