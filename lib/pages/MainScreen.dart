import 'package:flutter/material.dart';

import 'package:flutter_pemula_1/pages/Homepage.dart';
import 'package:flutter_pemula_1/pages/bookmark_pages.dart';
import 'package:flutter_pemula_1/provider/bottom_navigation_provider.dart';
import 'package:provider/provider.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Consumer<BottomNavigationProvider>(
        builder: (context, value, child) {
          final pageMap = {0: const HomePage(), 1: const BookmarkScreen()};
          return pageMap[value.indexBottomNavigation] ?? const HomePage();
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: context
            .watch<BottomNavigationProvider>()
            .indexBottomNavigation,
        onTap: (index) {
          context.read<BottomNavigationProvider>().setIndexBottomNavigationBar =
              index;
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
          ),
        ],
      ),
    );
  }
}
