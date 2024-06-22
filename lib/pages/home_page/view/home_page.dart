import 'package:flutter/material.dart';
import 'components/menu_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // app bar
      appBar: AppBar(
        title: const Text('All Chapters'),
      ),

      // body
      body: const Column(),

      // drawer
      drawer: const MenuDrawer(),
    );
  }
}
