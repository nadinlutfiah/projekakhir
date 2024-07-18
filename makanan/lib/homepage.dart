import 'package:flutter/material.dart';
import 'package:boekiez/halamandua.dart';
class ButtomNavigationBar extends StatefulWidget {
  const ButtomNavigationBar({Key? key}) : super(key: key);

  @override
  _ButtomNavigationBarAlaNaufalState createState() => _ButtomNavigationBarAlaNaufalState();
}

class _ButtomNavigationBarAlaNaufalState extends State {
  int _selectedTab = 0;
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
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 40,), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search, size: 40), label: "About"),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.favorite, size: 40),
              tooltip: 'Your favorite fruit',
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => const HalamanDua()),);
              },), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.my_library_books_outlined, size: 40), label: "Product"),
        ],
      ),
    );
  }
}
