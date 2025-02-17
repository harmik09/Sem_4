import 'package:flutter/material.dart';

class ImageAsset extends StatelessWidget {
  const ImageAsset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Image from Asset',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Image.asset('assets/images/a_dot_ham.jpeg'),
      ),
    );
  }
}
