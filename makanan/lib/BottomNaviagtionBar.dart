import 'package:flutter/material.dart';
import 'package:boekiez/halamandua.dart';

class BottomNavigationBarAlaNaufal extends StatefulWidget {
  const BottomNavigationBarAlaNaufal({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarAlaNaufalState createState() => _BottomNavigationBarAlaNaufalState();
}

class _BottomNavigationBarAlaNaufalState extends State<BottomNavigationBarAlaNaufal> {
  int _selectedTab = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedTab = index;
    });

    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HalamanDua()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: const Color.fromARGB(255, 30, 30, 30),
      ),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedTab,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 40),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 40),
            label: "About",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, size: 40),
            label: "Contact",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books_outlined, size: 40),
            label: "Product",
          ),
        ],
      ),
    );
  }
}
