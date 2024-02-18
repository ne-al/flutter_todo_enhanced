import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TODO ENHANCED'),
        centerTitle: true,
        actions: [
          IconButton.filledTonal(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            GlassContainer.clearGlass(
              height: 220,
              width: 215,
              borderRadius: BorderRadius.circular(20),
            ),
          ],
        ),
      ),
    );
  }
}
