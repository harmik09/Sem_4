import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:matrimony/Design/aboutus.dart';
// import 'package:matrimony/Design/adduser.dart';
// import 'package:matrimony/Design/favorite.dart';
// import 'package:matrimony/Design/userlist.dart';

class Dashboard extends StatelessWidget {
  // Define the list of menus with the correct type
  List<Map<String, dynamic>> menu = [
    {"icon": Icons.person_add_outlined, "text": "Add User",},
    {"icon": Icons.list_alt_rounded, "text": "User List",},
    {"icon": Icons.favorite_border, "text": "Favorite"},
    {"icon": Icons.account_circle_outlined, "text": "About Us"},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            'Welcome Soulmate Hub',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: GridView.builder(
          itemCount: menu.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => menu[index]['page']),
                  // );
                },
                child: Card(
                  elevation: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        menu[index]['icon'],
                        size: 50,
                        color: Colors.teal,
                      ),
                      SizedBox(height: 10),
                      Text(
                        menu[index]['text'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}