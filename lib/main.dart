import 'package:flutter/material.dart';
import 'package:flutter_pemula_1/pages/MainScreen.dart';
import 'package:flutter_pemula_1/pages/provider_main_screen.dart';
import 'package:flutter_pemula_1/provider/bookmark_provider.dart';
import 'package:flutter_pemula_1/provider/bottom_navigation_provider.dart';
import 'package:flutter_pemula_1/provider/counter_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        ChangeNotifierProvider(create: (_) => BottomNavigationProvider()),
        ChangeNotifierProvider(create: (_) => BookmarkProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adoption Cat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const Mainscreen(),
    );
  }
}
