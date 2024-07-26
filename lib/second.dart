import 'package:flutter/material.dart';
import 'component/appbar.dart';
import 'component/navbar.dart';
import 'component/connecting.dart';
import 'component/dbCard.dart';
import 'component/dbCardPb.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarNew(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView( // Tambahkan SingleChildScrollView di sini
          child: Column(
            children: [
              Connecting(),
              SizedBox(height: 16),
              Text('Terakhir update: 20s', style: TextStyle(fontSize: 13, fontStyle: FontStyle.italic)),
              SizedBox(height: 16),
              dbCard(),
              SizedBox(height: 24),
              dbCardPb(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavbar(currentIndex: 1),
    );
  }
}
