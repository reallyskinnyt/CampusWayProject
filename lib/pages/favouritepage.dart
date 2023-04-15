import 'package:flutter/material.dart';
import '../components/bottom_navbar.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});
  @override
  _FavouritePage createState() => _FavouritePage();
}

class _FavouritePage extends State<FavouritePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite Page'),
      ),
      body: const Center(
        child: Text('This is favourite page'),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: _currentIndex,
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
