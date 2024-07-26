import 'package:flutter/material.dart';
import 'component/appbar.dart';
import 'component/navbar.dart';
import 'component/result.dart';
import 'component/resultPb.dart';
import 'component/connecting.dart';



const List<String> listData = <String>['Data Terakhir', 'Data Satu Pekan', 'Data Satu Bulan'];

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  @override
  Widget build(BuildContext context){
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarNew(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
          Connecting(),
          SizedBox(height: 16),
          WarningCard(),
          SizedBox(height: 24),
          WarningCardPb(),
          SizedBox(height: 16),
          Text('*dalam satuan Mg/L', style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),)
        ],
        ),
      ),
         bottomNavigationBar: CustomNavbar(currentIndex: 0)
    );
  }
}