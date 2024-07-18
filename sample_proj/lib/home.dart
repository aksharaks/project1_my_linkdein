import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(

        backgroundColor: Colors.green.shade900,
        title: const Text(
          "whatapp",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Icon(Icons.search,
          color: Colors.white,
          ),
          Icon(Icons.more_vert, color: Colors.white,)
      
        ],
      ),

    
    );



  }
}