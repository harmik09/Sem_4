import 'package:flutter/material.dart';

class ActionBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Action Bar Demo",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black54,
            ),
          ),
          backgroundColor: Colors.black26,
          // Optionally set background color of the app bar
          elevation: 0,
          actions: [
            // IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Are you sure to log out"),
                          content: Text("Content"),
                          actions: [
                            ElevatedButton(onPressed: () {}, child: Text("ok")),
                            ElevatedButton(onPressed: () {
                              Navigator.of(context).pop();
                            }, child: Text('Cancel'))
                          ],
                        );
                      });
                },
                child: Text('Log Out'))
          ], // Add any other actions here
        ),
      ),
    );
  }
}
