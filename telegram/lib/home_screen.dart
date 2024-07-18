import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        leading: TextButton(
          onPressed: () {
            // Implement your cancel functionality here
          },
          child: const Text(
            'Cancel',
            style: TextStyle(
              color: Color.fromARGB(255, 27, 134, 221),
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Implement your next functionality here
            },
            child: const Text(
              'Next',
              style: TextStyle(
                color: Color.fromARGB(255, 27, 134, 221),
              ),
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text('Home Screen Content'),
      ),
    );
  }
}
