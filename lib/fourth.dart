import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'component/navbar.dart';

class FourthPage extends StatelessWidget {
  final String svgPath = 'lib/assets/LogoAboutUs.svg'; // Path relatif

  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container untuk gambar SVG tanpa padding
          Container(
            height: 230,
            width: double.infinity,
            color: const Color.fromRGBO(1, 82, 132, 1),
            child: Center(
              // Pake Center widget buat nge-center SVG
              child: SvgPicture.asset(
                svgPath,
                height: 78, // Sesuaikan ukuran SVG
                width: 188,
              ),
            ),
          ),
          const SizedBox(height: 24),
          // Container untuk judul yang ditengahkan
          Container(
            width: double.infinity, // Biar teks di tengah
            color: Colors.white,
            child: const Text(
              'Tentang Kami',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center, // Tengahin teks
            ),
          ),
          const SizedBox(height: 24),
          // Container untuk teks dengan justified alignment
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0), // Padding hanya untuk teks
            child: const Text(
              'Galic Instrument adalah aplikasi inovatif yang dirancang untuk memudahkan pengukuran kadar Fe³⁺, Hg²⁺, dan Pb²⁺ dalam berbagai sampel. Aplikasi ini menggunakan integrasi ML sebagai pengolah data absorbansi yang kemudian memberikan output berupa konsentrasi logam tersebut dalam sampel air.\n\n'
              'Galic Instrument bekerja dengan spektrofotometer yang kami kembangkan untuk menganalisis sampel air dalam kuvet. Dalam proses pengukuran, kami menggunakan asam galat sebagai ligan, yang secara efektif berinteraksi dengan ion logam yang dituju. Teknologi ini memungkinkan aplikasi kami memberikan solusi cepat dalam mendeteksi konsentrasi ion logam berat dalam sampel.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.justify, // Menambahkan justified alignment
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomNavbar(currentIndex: 3),
    );
  }
}
