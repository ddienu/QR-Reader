import 'package:flutter/material.dart';


class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  final currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: Colors.teal,
      unselectedItemColor: Colors.teal,
      elevation: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon ( Icons.map ),
          label: 'Mapa'
          ),
        BottomNavigationBarItem(
          icon: Icon ( Icons.compass_calibration_rounded ),
          label: 'Direcciones'
          ),

      ]
      );
  }
}