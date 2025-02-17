import 'package:flutter/material.dart';

class GridviewStaticDemo extends StatelessWidget {
  final List<Map<String, String>> bgImagesWithText = [
    {
      "img":
          "https://images.pexels.com/photos/235986/pexels-photo-235986.jpeg?auto=compress&cs=tinysrgb",
      "text": "Nature - Mountains"
    },
    {
      "img": "https://images.unsplash.com/photo-1540206395-68808572332f",
      "text": "Abstract Gradient"
    },
    {
      "img": "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0",
      "text": "Cityscape - Skyline at night"
    },
    {
      "img":
          "https://images.pexels.com/photos/276092/pexels-photo-276092.jpeg?auto=compress&cs=tinysrgb&w=600",
      "text": "Minimalist - Clean gradient"
    },
    {
      "img": "https://images.unsplash.com/photo-1470229722913-7c0e2dbbafd3",
      "text": "Space - Galaxy"
    },
    {
      "img":
          "https://images.pexels.com/photos/289586/pexels-photo-289586.jpeg?auto=compress&cs=tinysrgb&w=600",
      "text": "Ocean - Waves"
    },
    {
      "img":
          "https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg?auto=compress&cs=tinysrgb&w=600",
      "text": "Forest - Nature"
    },
    {
      "img":
          "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&w=600",
      "text": "Urban - Street"
    },
    {
      "img":
          "https://images.pexels.com/photos/289586/pexels-photo-289586.jpeg?auto=compress&cs=tinysrgb&w=600",
      "text": "Texture - Wooden"
    },
    {
      "img": "https://images.unsplash.com/photo-1446776811953-b23d57bd21aa",
      "text": "Sunset - Serene beach"
    },
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
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                  child: Image.network(
                    bgImagesWithText[index]["img"]!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.black.withOpacity(0.6),
                    // Semi-transparent background for text
                    child: Text(
                      bgImagesWithText[index]["text"]!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
