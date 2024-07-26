import 'package:flutter/material.dart';

class WarningCardPb extends StatelessWidget {
  const WarningCardPb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 350, // Atur lebar container
//       padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // Bagian atas - Peringatan (penuh tanpa padding)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(206, 255, 177, 1),
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: const Center(
              child: Text(
                'Cenderung Aman',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color.fromRGBO(58, 98, 34, 1),
                ),
              ),
            ),
          ),
//           const SizedBox(height: 16),
          // Container untuk Kadar Fe3+ dan informasi detail
          Container(
            color: const Color.fromRGBO(238, 244, 254, 1),
            padding: const EdgeInsets.all(16.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Kadar Fe3+
                Text(
                  'Konsentrasi Hg2+ & Pb2+ ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 16),
                // Row untuk 21.3 dan Detail Information with Icons
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Nilai 21.3
                    Text(
                      '2.13',
                      style: TextStyle(
                        fontSize: 56,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 24),
                    // Kolom untuk teks dan ikon
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: <Widget>[
                              Icon(Icons.location_on, color: Colors.black, size: 12.0),
                              SizedBox(width: 8),
                              Flexible(
                                child: Text(
                                  'Jl. STM Pembangunan No 21',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: <Widget>[
                              Icon(Icons.calendar_today,
                                  color: Colors.black, size: 12.0),
                              SizedBox(width: 8),
                              Flexible(
                                child: Text(
                                  'Jum, 26 Juli 2024, 09.21',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: <Widget>[
                              Icon(Icons.account_circle,
                                  color: Colors.black, size: 12.0),
                              SizedBox(width: 8),
                              Flexible(
                                child: Text(
                                  'Laksani',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}