import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: const Color.fromARGB(255, 120, 119, 119),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Shorts'),
        BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: 'Upload'),
        BottomNavigationBarItem(icon: Icon(Icons.subscriptions), label: 'Subscriptions'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'You'),
      ],
    );
  }
}
