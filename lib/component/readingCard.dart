import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReadingCard extends StatelessWidget {
  final String warningStatus;
  final int kadarFe;

  // Konstruktor dengan parameter
  const ReadingCard({
    super.key,
    this.warningStatus = 'Peringatan!',
    this.kadarFe = 122,
  });

  @override
  Widget build(BuildContext context) {
    return 
      Column(
        children: [
          Container(
            height: 30,
            color: const Color.fromRGBO(255, 215, 177, 1),
            child: Center(
              child: Text(
                warningStatus,
                style: const TextStyle(fontSize: 12, color: Color.fromRGBO(110, 20, 0, 1)),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 6.0),
            ),
            color: Colors.white,
            child: Column(
              children: [
                const Text(
                  'Kadar Fe3+ dalam sampel:',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                Text(
                  kadarFe.toString(),
                  style: const TextStyle(fontSize: 56, color: Colors.black, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
          // Container(
          //   child: Row(
          //     children: [
          //       SvgPicture.asset('../assets/alarm.svg', width: 50, height: 50),
          //       Text("09.30"),
          //     ],
          //   )
          // ),
        ],
      );
  }
}
