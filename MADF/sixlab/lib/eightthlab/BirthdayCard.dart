import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BirthdayCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Birthday Card',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/a_dot_ham.jpeg'),
            const SizedBox(height: 20),
            Text(
              'Happy Birthday',
              style: TextStyle(
                fontFamily: 'nameText',
                // Ensure this matches the family in pubspec.yaml
                fontSize: 40,
                // Increase size to see the font change
                color: Colors.black, // Use a contrasting color for visibility
              ),
            ),
            Text(
              'Name Here',
              style: TextStyle(
                  fontFamily: 'nameText', fontSize: 20, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
