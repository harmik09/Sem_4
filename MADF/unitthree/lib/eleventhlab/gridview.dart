import 'package:flutter/material.dart';

class GridviewDemo extends StatelessWidget {
  final List<Map<String, String>> bgImagesWithText = [
    {"img": "https://images.pexels.com/photos/235986/pexels-photo-235986.jpeg?auto=compress&cs=tinysrgb"},
    {"img": "https://images.unsplash.com/photo-1540206395-68808572332f"},
    {"img": "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0"},
    {"img": "https://images.pexels.com/photos/276092/pexels-photo-276092.jpeg?auto=compress&cs=tinysrgb&w=600"},
    {"img": "https://images.unsplash.com/photo-1470229722913-7c0e2dbbafd3"},
    {"img": "https://images.pexels.com/photos/289586/pexels-photo-289586.jpeg?auto=compress&cs=tinysrgb&w=600"},
    {"img": "https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg?auto=compress&cs=tinysrgb&w=600"},
    {"img": "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&w=600"},
    {"img": "https://images.pexels.com/photos/289586/pexels-photo-289586.jpeg?auto=compress&cs=tinysrgb&w=600"},
    {"img": "https://images.unsplash.com/photo-1446776811953-b23d57bd21aa"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
      ),
      body: GridView.builder(
        itemCount: bgImagesWithText.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 5,
            child: ClipRRect(

              borderRadius: BorderRadius.circular(10), // Rounded corners
              child: Image.network(
                bgImagesWithText[index]["img"]!,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          );
        },
      ),
    );
  }
}
