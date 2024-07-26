import 'package:Galinz/component/tableview.dart';
import 'package:flutter/material.dart';
import 'component/appbar.dart';
import 'component/navbar.dart';
import 'component/result.dart';
import 'component/resultPb.dart';
import 'component/connecting.dart';
import 'component/dropdo.dart';


class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarNew(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
          Connecting(),
          SizedBox(height: 16),
          DropdownWoy(),
          SizedBox(height: 16),
          DataTableWidget()
        ],
        ),
      ),
         bottomNavigationBar: CustomNavbar(currentIndex: 2)
    );
  }
}