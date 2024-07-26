import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  final int currentIndex; // Bikin currentIndex jadi final, biar bisa di set dari luar

  const CustomNavbar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color.fromRGBO(1, 82, 132, 1),
      selectedItemColor: Colors.white,
      unselectedItemColor: const Color.fromARGB(255, 165, 216, 242),
      currentIndex: currentIndex,
      onTap: (index) {
        // Handle navigation pas icon di tap
        switch (index) {
          case 0:
            // Navigasi ke FirstPage
            Navigator.pushReplacementNamed(context, '/first');
            break;
          case 1:
            // Navigasi ke SecondPage
            Navigator.pushReplacementNamed(context, '/second');
            break;
          case 2:
            // Navigasi ke ThirdPage
            Navigator.pushReplacementNamed(context, '/third');
            break;
          case 3:
            // Navigasi ke FourthPage
            Navigator.pushReplacementNamed(context, '/fourth');
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.window),
          label: ''
  // Hapus label dengan kosongin string
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.storage), // Ganti dengan alternatif icon
          label: ''
         // Hapus label dengan kosongin string
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.browse_gallery),
          label: '' // Pastikan pake icon yang valid
       // Hapus label dengan kosongin string
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.help_center), // Pastikan pake icon yang valid
          label: ''
        // Hapus label dengan kosongin string
        ),
      ],
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }
}
