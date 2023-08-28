import 'package:flutter/material.dart';

class BottomAppbar extends StatefulWidget {
  const BottomAppbar({super.key});

  @override
  State<BottomAppbar> createState() => _BottomAppbarState();
}

class _BottomAppbarState extends State<BottomAppbar> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.amber,
          height: 70,
          child: Row(
            children: [
              MaterialButton(
                onPressed: () {},
                child: const Icon(Icons.home),
              ),
              MaterialButton(
                onPressed: () {},
                child: const Icon(Icons.home),
              ),
              MaterialButton(
                onPressed: () {},
                child: const Icon(Icons.home),
              ),
              MaterialButton(
                onPressed: () {},
                child: const Icon(Icons.home),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
