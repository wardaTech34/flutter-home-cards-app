import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'OffersScreen.dart';
import 'CardsScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0; // track which screen is active

  // List of screens to show
  final screens = const [HomeScreen(), OffersScreen(), CardsScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: screens),
    );
  }
}
