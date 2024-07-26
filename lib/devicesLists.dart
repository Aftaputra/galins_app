import 'package:flutter/material.dart';
import 'first.dart';


class PilihPerangkatPage extends StatelessWidget {
  final List<String> devices = [
    "Redmi 10C",
    "Advan Al Gen",
    "Samsung S23",
    "Realme C1",
    "ROG Phone",
    "Galic Instrument"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Hilangkan bayangan bawah AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/first');
          },
        ),
        title: const Text(
          "Pilih Perangkat",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black, // Warna ikon
        ),
      ),
      backgroundColor: const Color.fromRGBO(238, 244, 254, 1), // Warna background
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: devices.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: const Icon(Icons.phone_android),
                  title: Text(devices[index], style: TextStyle(fontSize: 14),),
                  onTap: () {
                    // Tindakan saat item dipilih
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}