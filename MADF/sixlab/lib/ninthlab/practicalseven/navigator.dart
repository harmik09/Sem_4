import 'package:flutter/material.dart';
import 'package:sixlab/ninthlab/practicalone/about.dart';
import 'package:sixlab/ninthlab/practicalone/home.dart';

class Nevigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator Demo"),
      ),
      drawer: Drawer(
        child: Center(
          child: Column(
            children: [
              DrawerHeader(
                child: Image.asset("assets/images/a_dot_ham.jpeg"),
              ),
                ListTile(

                title: Text("Home"),
                subtitle: Text("push"),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Home()));
                },
              ),
              ListTile(
                title: Text("About"),
                subtitle: Text("push"),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => About()));
                },
              ),
              ListTile(
                title: Text("Home"),
                subtitle: Text("pop"),
                onTap: () {
                  Navigator.of(context)
                      .pop(MaterialPageRoute(builder: (context) => About()));
                },
              ),
              ListTile(
                title: Text("About"),
                subtitle: Text("pop"),
                onTap: () {
                  Navigator.of(context)
                      .pop(MaterialPageRoute(builder: (context) => About()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
