import 'package:flutter/material.dart';
import 'package:flutter_pemula_1/data/tourism_place.dart';
import 'package:flutter_pemula_1/data/type_of_cat.dart';
import 'package:flutter_pemula_1/pages/Homepage.dart';
import 'package:flutter_pemula_1/pages/bookmark_pages.dart';
import 'DetailScreen.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  int _selectedindex = 0;

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      const HomePage(),
      const BookmarkScreen(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: _pages[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedindex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
          ),
        ],
      ),




      
    );
  }
}
