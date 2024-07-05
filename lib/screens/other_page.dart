import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 96, 174, 237),
        title: const Text(
          "Other Page",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(
          color: Colors.white, // Set the color for the back icon
        ),
      ),
      body: Center(
        child: Text(
          'Other Page',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
