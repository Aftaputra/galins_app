import 'package:flutter/material.dart';

class Connecting extends StatelessWidget {
  const Connecting({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          // Text 1
          const Text(
            'Terhubung ke : ',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
          // Text 2
          const Expanded(
            child: Text(
              'Galic Instrument',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // Button outline
          OutlinedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/blelis');
            },
            child: const Text('Ganti'),
          ),
        ],
      );
  }
}
