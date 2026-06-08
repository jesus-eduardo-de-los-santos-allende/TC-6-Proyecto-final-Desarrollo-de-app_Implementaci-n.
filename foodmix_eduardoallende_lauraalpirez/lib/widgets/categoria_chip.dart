import 'package:flutter/material.dart';

class CategoriaTabbar extends StatelessWidget {
  const CategoriaTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      tabs: [
        Tab(text: 'Comida'),
        Tab(text: 'Bebidas'),
        Tab(text: 'Postres'),
      ],
    );
  }
}