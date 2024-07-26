// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(1, 82, 132, 1),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'GaLic',
                style: TextStyle(
                  fontSize: 48,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text(
                'Instrument',
                style: TextStyle(
                  fontSize: 36,
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/first');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFD700), // Custom yellow color
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(16),
                ),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}